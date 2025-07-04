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
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _bloc = Injector.instance<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: _bloc,
      listenWhen: (previous, current) =>
          previous.forgotPasswordStatus != current.forgotPasswordStatus,
      listener: (context, state) {
        state.forgotPasswordStatus.maybeMap(
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
          title: Text(context.l10n.forgotPassword),
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
                      context.l10n.forgotPasswordText1,
                      style: context.textTheme.titleMedium,
                    ),
                    1.5.h.vertical,
                    Text(
                      context.l10n.forgotPasswordText2,
                      style: context.textTheme.bodySmall
                          ?.copyWith(color: ColorValues.grey50),
                    ),
                    5.h.vertical,
                    CustomTextField(
                      textInputType: TextInputType.emailAddress,
                      controller: _emailController,
                      label: context.l10n.yourEmail,
                      hint: context.l10n.enterEmail,
                      validator:
                      Validator(context: context).emailValidator,
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
          _bloc.add(AuthEvent.forgotPassword(email));
        }
      },
    );
  }
}
