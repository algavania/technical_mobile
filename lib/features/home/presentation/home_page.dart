import 'package:auto_route/annotations.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:technical_mobile/app/app.dart';
import 'package:technical_mobile/core/color_values.dart';
import 'package:technical_mobile/core/styles.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/presentation/bloc/user_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/routes/router.dart';
import 'package:technical_mobile/util/extensions.dart';
import 'package:technical_mobile/widgets/custom_gesture_unfocus.dart';
import 'package:technical_mobile/widgets/custom_text_field.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = Injector.instance.get<UserBloc>();
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void initState() {
    _bloc
      ..add(const UserEvent.getMyProfile())
      ..add(const UserEvent.getUsers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomGestureUnfocus(
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.home),
          actions: [
            BlocBuilder<UserBloc, UserState>(
              bloc: _bloc,
              buildWhen: (previous, current) =>
                  previous.getMyProfileStatus != current.getMyProfileStatus,
              builder: (context, state) {
                final user = state.getMyProfileStatus.maybeMap(
                  orElse: () => null,
                  data: (data) => data.data,
                );
                return GestureDetector(
                  onTap: () {
                    appRouter.push(const ProfileRoute());
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: user?.imageUrl != null
                        ? NetworkImage(user!.imageUrl!)
                        : const AssetImage('assets/images/avatar.webp'),
                  ),
                );
              },
            ),
            Styles.defaultPadding.horizontal,
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            _bloc.add(const UserEvent.refresh());
            await Future<void>.delayed(const Duration(milliseconds: 500));
          },
          child: Stack(
            children: [
              ListView(),
              SingleChildScrollView(
                controller: _scrollController
                  ..addListener(() async {
                    final isLoading = _bloc.state.getUsersLoadingStatus
                        .maybeMap(orElse: () => false, loading: (_) => true);
                    if (_scrollController.offset ==
                            _scrollController.position.maxScrollExtent &&
                        !isLoading &&
                        _bloc.needFetching) {
                      EasyThrottle.throttle(
                        'load-more',
                        const Duration(milliseconds: 500),
                        () {
                          _bloc.add(const UserEvent.getUsers());
                        },
                      );
                    }
                  }),
                child: Padding(
                  padding: const EdgeInsets.all(Styles.defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: Styles.defaultSpacing,
                    children: [
                      _buildSectionWidget(),
                      Styles.mediumSpacing.vertical,
                      _buildSearchWidget(),
                      1.vertical,
                      _buildListWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListWidget() {
    return BlocBuilder<UserBloc, UserState>(
      bloc: _bloc,
      buildWhen: (previous, current) =>
          previous.getUsersStatus != current.getUsersStatus ||
          previous.getUsersLoadingStatus != current.getUsersLoadingStatus,
      builder: (context, state) {
        var users = state.getUsersStatus.maybeMap(
          orElse: () => const <UserEntity>[],
          data: (data) => data.data,
        );
        final isLoading = state.getUsersLoadingStatus
                .maybeMap(orElse: () => false, loading: (_) => true) &&
            _bloc.page == 1;
        if (isLoading) {
          users = generateMockUsers();
        }
        final isLoadMoreLoading = state.getUsersLoadingStatus
                .maybeMap(orElse: () => false, loading: (_) => true) &&
            _bloc.page > 1;
        final errorMessage = state.getUsersLoadingStatus.maybeMap(
          orElse: () => '',
          error: (error) => error.message,
        );
        return Skeletonizer(
          enabled: isLoading,
          child: Column(
            children: [
              if (users.isEmpty)
                Column(
                  children: [
                    Lottie.asset('assets/lottie/no_data.json'),
                    Text(context.l10n.noData),
                  ],
                )
              else
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, i) => _buildUserItemWidget(users[i]),
                  separatorBuilder: (_, __) => Styles.defaultSpacing.vertical,
                  itemCount: users.length,
                ),
              if (isLoadMoreLoading) _buildLoadMoreLoadingWidget(),
              if (errorMessage.isNotEmpty) _buildErrorWidget(errorMessage),
            ],
          ),
        );
      },
    );
  }

  Widget _buildErrorWidget(String errorMessage) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Styles.defaultPadding),
      child: Text(
        errorMessage,
        style: context.textTheme.bodyMedium?.copyWith(
          color: ColorValues.danger50,
        ),
      ),
    );
  }

  Widget _buildLoadMoreLoadingWidget() {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorValues.primary50,
      ),
    );
  }

  Widget _buildUserItemWidget(UserEntity user) {
    return Container(
      padding: const EdgeInsets.all(Styles.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: ColorValues.primary50),
        borderRadius: BorderRadius.circular(Styles.defaultBorder),
      ),
      child: Row(
        spacing: Styles.defaultSpacing,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: user.imageUrl != null
                ? NetworkImage(user.imageUrl!)
                : const AssetImage('assets/images/avatar.webp'),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: context.textTheme.titleMedium?.copyWith(fontSize: 16),
                ),
                Text(user.email),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: ColorValues.primary50,
          ),
        ],
      ),
    );
  }

  Widget _buildSearchWidget() {
    return CustomTextField(
      controller: _searchController,
      hint: context.l10n.searchHint,
      suffixIcon: Icons.search,
      onChanged: (value) {
        EasyDebounce.debounce(
          'search-debounce',
          const Duration(milliseconds: 500),
          () {
            _bloc.add(UserEvent.searchUsers(value ?? ''));
          },
        );
      },
    );
  }

  Widget _buildSectionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Styles.mediumSpacing,
      children: [
        Text(
          context.l10n.homeText1,
          style: context.textTheme.titleLarge,
        ),
        Text(context.l10n.homeText2),
      ],
    );
  }
}
