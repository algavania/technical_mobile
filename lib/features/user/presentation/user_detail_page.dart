import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:technical_mobile/core/color_values.dart';
import 'package:technical_mobile/core/styles.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/presentation/bloc/user_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/util/extensions.dart';

@RoutePage()
class UserDetailPage extends StatefulWidget {
  const UserDetailPage({required this.user, super.key});

  final UserEntity user;

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  late UserEntity _user = widget.user;
  final _bloc = Injector.instance<UserBloc>();

  @override
  void initState() {
    _bloc.add(UserEvent.getUser(_user.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      bloc: _bloc,
      buildWhen: (previous, current) =>
          previous.getUserStatus != current.getUserStatus,
      builder: (context, state) {
        _user = state.getUserStatus.maybeMap(
          orElse: () => _user,
          data: (data) => data.data,
        );
        final isLoading = state.getUserStatus.maybeMap(
          orElse: () => false,
          loading: (_) => true,
        );
        return Scaffold(
          appBar: AppBar(
            title: Text(_user.name),
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              _bloc.add(UserEvent.getUser(_user.id));
            },
            child: Stack(
              children: [
                ListView(),
                SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(Styles.defaultPadding),
                    child: Skeletonizer(
                        enabled: isLoading,
                        child: _buildProfileInfoWidget()),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildProfileInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: Styles.biggerSpacing,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: _user.imageUrl != null
                  ? NetworkImage(_user.imageUrl!)
                  : const AssetImage('assets/images/avatar.webp'),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _user.name,
                    style: context.textTheme.titleMedium,
                  ),
                  Text(
                    _user.email,
                    style: context.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
        Styles.defaultSpacing.vertical,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: ColorValues.primary50),
            borderRadius: BorderRadius.circular(Styles.defaultBorder),
          ),
          padding: const EdgeInsets.all(Styles.defaultPadding),
          child: Text(_user.description ?? context.l10n.noDescriptionYet),
        ),
      ],
    );
  }
}
