import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:technical_mobile/app/app.dart';
import 'package:technical_mobile/core/color_values.dart';
import 'package:technical_mobile/core/styles.dart';
import 'package:technical_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technical_mobile/features/home/presentation/bloc/user_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/routes/router.dart';
import 'package:technical_mobile/util/extensions.dart';
import 'package:technical_mobile/widgets/custom_alert_dialog.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _bloc = Injector.instance<UserBloc>();
  final _authBloc = Injector.instance<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: _authBloc,
      listenWhen: (previous, current) =>
          previous.logoutStatus != current.logoutStatus,
      listener: (context, state) {
        state.logoutStatus.maybeMap(
          orElse: () {},
          loading: (_) => context.loaderOverlay.show(),
          error: (error) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: error.message, isSuccess: false);
          },
          data: (_) {
            context.loaderOverlay.hide();
            appRouter
              ..popUntilRoot()
              ..replace(const LoginRoute());
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.profile),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            _bloc.add(const UserEvent.getMyProfile());
          },
          child: Stack(
            children: [
              ListView(),
              SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(Styles.defaultPadding),
                  child: Column(
                    spacing: Styles.defaultSpacing,
                    children: [
                      _buildProfileInfoWidget(),
                      Styles.smallSpacing.vertical,
                      _buildItemWidget(
                        icon: Icons.person,
                        title: context.l10n.editProfile,
                        onTap: () {
                          appRouter.push(const EditProfileRoute()).then((_) {
                            _bloc.add(const UserEvent.changePickedImage(null));
                          });
                        },
                      ),
                      _buildItemWidget(
                        icon: Icons.key,
                        title: context.l10n.editPassword,
                        onTap: () async {
                          final res =
                              await appRouter.push(const EditPasswordRoute());
                          if (res is String) {
                            context.showSnackBar(message: res);
                          }
                        },
                      ),
                      _buildItemWidget(
                        icon: Icons.logout,
                        title: context.l10n.logout,
                        isLogout: true,
                        onTap: _logout,
                      ),
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

  void _logout() {
    showDialog<void>(
      context: context,
      builder: (_) => CustomAlertDialog(
        title: context.l10n.logout,
        description: context.l10n.logoutConfirmation,
        proceedAction: () {
          _authBloc.add(const AuthEvent.logout());
        },
      ),
    );
  }

  Widget _buildProfileInfoWidget() {
    return BlocBuilder<UserBloc, UserState>(
      bloc: _bloc,
      buildWhen: (previous, current) =>
          previous.getMyProfileStatus != current.getMyProfileStatus,
      builder: (context, state) {
        final user = state.getMyProfileStatus.maybeMap(
          orElse: () => null,
          data: (s) => s.data,
        );
        return Row(
          spacing: Styles.biggerSpacing,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: user?.imageUrl != null
                  ? NetworkImage(user!.imageUrl!)
                  : const AssetImage('assets/images/avatar.webp'),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user?.name ?? '',
                    style: context.textTheme.titleMedium,
                  ),
                  Text(
                    user?.email ?? '',
                    style: context.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                appRouter.push(const EditProfileRoute()).then((_) {
                  _bloc.add(const UserEvent.changePickedImage(null));
                });
              },
              child: const Icon(
                Icons.edit,
                color: ColorValues.primary50,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildItemWidget({
    required IconData icon,
    required String title,
    bool isLogout = false,
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Styles.biggerPadding,
          vertical: Styles.defaultSpacing,
        ),
        decoration: BoxDecoration(
          color: isLogout ? ColorValues.danger10 : ColorValues.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: isLogout ? ColorValues.danger20 : ColorValues.primary10,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 26,
              color: isLogout ? ColorValues.danger50 : ColorValues.primary50,
            ),
            const SizedBox(width: Styles.defaultSpacing),
            Text(
              title,
              style: context.textTheme.titleMedium?.copyWith(
                fontSize: 16,
                color: isLogout ? ColorValues.danger50 : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
