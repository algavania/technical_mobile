import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_mobile/core/color_values.dart';
import 'package:technical_mobile/core/styles.dart';
import 'package:technical_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/util/extensions.dart';
import 'package:technical_mobile/util/validator.dart';
import 'package:technical_mobile/widgets/custom_button.dart';
import 'package:technical_mobile/widgets/custom_gesture_unfocus.dart';
import 'package:technical_mobile/widgets/custom_text_field.dart';

@RoutePage()
class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({required this.token, super.key});
  final String token;

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _bloc = Injector.instance<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: _bloc,
      listener: (context, state) {
        state.resetPasswordStatus.maybeMap(
          loading: (_) {
            context.loaderOverlay.show();
          },
          error: (error) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: error.message, isSuccess: false);
          },
          data: (data) {
            context.loaderOverlay.hide();
            context.showSnackBar(
              message: context.l10n.forgotPasswordSuccess,
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.resetPassword),
        ),
        body: CustomGestureUnfocus(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Styles.defaultPadding),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    6.h.vertical,
                    Text(
                      context.l10n.resetPasswordText1,
                      style: context.textTheme.titleMedium,
                    ),
                    1.5.h.vertical,
                    Text(
                      context.l10n.resetPasswordText2,
                      style: context.textTheme.bodySmall
                          ?.copyWith(color: ColorValues.grey50),
                    ),
                    5.h.vertical,
                    CustomTextField(
                      controller: _emailController,
                      label: context.l10n.yourEmail,
                      hint: context.l10n.enterEmail,
                      validator: Validator(context: context).emailValidator,
                    ),
                    16.vertical,
                    CustomTextField(
                      controller: _passwordController,
                      label: context.l10n.yourPassword,
                      hint: context.l10n.enterPassword,
                      isPassword: true,
                      validator: Validator(context: context).emptyValidator,
                    ),
                    16.vertical,
                    CustomTextField(
                      controller: _passwordConfirmationController,
                      label: context.l10n.yourPasswordConfirmation,
                      hint: context.l10n.enterPasswordConfirmation,
                      isPassword: true,
                      validator: (s) {
                        return Validator(context: context)
                            .passwordConfirmationValidator(
                          _passwordController.text,
                          _passwordConfirmationController.text,
                        );
                      },
                    ),
                    24.vertical,
                    _buildSubmitButtonWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButtonWidget() {
    return CustomButton(
      buttonText: context.l10n.submit,
      onPressed: () {
        if (_formKey.currentState?.validate() ?? true) {
          final email = _emailController.text.trim();
          final password = _passwordController.text;
          final passwordConfirmation = _passwordConfirmationController.text;
          _bloc.add(
            AuthEvent.resetPassword(
              email,
              password,
              passwordConfirmation,
              widget.token,
            ),
          );
        }
      },
    );
  }
}
