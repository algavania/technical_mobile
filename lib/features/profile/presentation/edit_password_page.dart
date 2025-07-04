import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:technical_mobile/app/app.dart';
import 'package:technical_mobile/core/styles.dart';
import 'package:technical_mobile/features/home/presentation/bloc/user_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/util/extensions.dart';
import 'package:technical_mobile/util/validator.dart';
import 'package:technical_mobile/widgets/custom_button.dart';
import 'package:technical_mobile/widgets/custom_text_field.dart';

@RoutePage()
class EditPasswordPage extends StatefulWidget {
  const EditPasswordPage({super.key});

  @override
  State<EditPasswordPage> createState() => _EditPasswordPageState();
}

class _EditPasswordPageState extends State<EditPasswordPage> {
  final _bloc = Injector.instance<UserBloc>();
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      bloc: _bloc,
      listenWhen: (previous, current) =>
          previous.updatePasswordStatus != current.updatePasswordStatus,
      listener: (context, state) {
        state.updatePasswordStatus.maybeMap(
          orElse: () {},
          loading: (_) {
            context.loaderOverlay.show();
          },
          error: (e) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: e.message, isSuccess: false);
          },
          data: (_) {
            context.loaderOverlay.hide();
            appRouter.pop(context.l10n.updatePasswordSuccess);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.editProfile),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Styles.defaultPadding),
            child: Form(
              key: _formKey,
              child: Column(
                spacing: Styles.defaultSpacing,
                children: [
                  _buildCurrentPasswordField(),
                  _buildNewPasswordField(),
                  _buildConfirmPasswordField(),
                  Styles.defaultSpacing.vertical,
                  _buildSaveButtonWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentPasswordField() {
    return CustomTextField(
      controller: _currentPasswordController,
      label: context.l10n.currentPassword,
      hint: context.l10n.currentPasswordHint,
      isPassword: true,
      validator: Validator(context: context).emptyValidator,
    );
  }

  Widget _buildNewPasswordField() {
    return CustomTextField(
      controller: _newPasswordController,
      label: context.l10n.newPassword,
      hint: context.l10n.newPasswordHint,
      isPassword: true,
      validator: Validator(context: context).emptyValidator,
    );
  }

  Widget _buildConfirmPasswordField() {
    return CustomTextField(
      controller: _confirmPasswordController,
      label: context.l10n.newPasswordConfirmation,
      hint: context.l10n.newPasswordConfirmationHint,
      isPassword: true,
      validator: (v) {
        final password = _newPasswordController.text;
        final passwordConfirmation = _confirmPasswordController.text;
        return Validator(context: context)
            .passwordConfirmationValidator(password, passwordConfirmation);
      },
    );
  }

  Widget _buildSaveButtonWidget() {
    return CustomButton(
      buttonText: context.l10n.save,
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          final oldPassword = _currentPasswordController.text;
          final newPassword = _newPasswordController.text;
          final confirmNewPassword = _confirmPasswordController.text;
          _bloc.add(
            UserEvent.updatePassword(
              oldPassword,
              newPassword,
              confirmNewPassword,
            ),
          );
        }
      },
    );
  }
}
