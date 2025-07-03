import 'package:auto_route/annotations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_mobile/app/app.dart';
import 'package:technical_mobile/core/color_values.dart';
import 'package:technical_mobile/core/styles.dart';
import 'package:technical_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/routes/router.dart';
import 'package:technical_mobile/util/extensions.dart';
import 'package:technical_mobile/util/validator.dart';
import 'package:technical_mobile/widgets/custom_button.dart';
import 'package:technical_mobile/widgets/custom_text_field.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _bloc = Injector.instance<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: _bloc,
      listener: (context, state) {
        state.registerStatus.maybeMap(
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
              message: context.l10n.registerSuccess,
            );
            Future.delayed(const Duration(seconds: 1), () {
              appRouter.replace(const LoginRoute());
            });
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Container(
                    margin: const EdgeInsets.all(Styles.defaultPadding),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          6.h.vertical,
                          Text(
                            context.l10n.registerText1,
                            style: context.textTheme.titleMedium,
                          ),
                          1.5.h.vertical,
                          Text(
                            context.l10n.registerText2,
                            style: context.textTheme.bodySmall
                                ?.copyWith(color: ColorValues.grey50),
                          ),
                          5.h.vertical,
                          CustomTextField(
                            controller: _nameController,
                            label: context.l10n.yourName,
                            hint: context.l10n.enterName,
                            validator:
                                Validator(context: context).emptyValidator,
                          ),
                          16.vertical,
                          CustomTextField(
                            textInputType: TextInputType.emailAddress,
                            controller: _emailController,
                            label: context.l10n.yourEmail,
                            hint: context.l10n.enterEmail,
                            validator:
                                Validator(context: context).emailValidator,
                          ),
                          16.vertical,
                          CustomTextField(
                            controller: _passwordController,
                            label: context.l10n.yourPassword,
                            hint: context.l10n.enterPassword,
                            isPassword: true,
                            validator:
                                Validator(context: context).emptyValidator,
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
                          16.vertical,
                          26.vertical,
                          _buildRegisterButtonWidget(),
                          const Spacer(),
                          3.h.vertical,
                          _buildLoginTextWidget(),
                          3.h.vertical,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterButtonWidget() {
    return CustomButton(
      buttonText: context.l10n.register,
      onPressed: () {
        if (_formKey.currentState?.validate() ?? true) {
          final name = _nameController.text.trim();
          final email = _emailController.text.trim();
          final password = _passwordController.text;
          final passwordConfirmation = _passwordConfirmationController.text;
          _bloc.add(
            AuthEvent.register(name, email, password, passwordConfirmation),
          );
        }
      },
    );
  }

  Widget _buildLoginTextWidget() {
    return RichText(
      text: TextSpan(
        text: context.l10n.loginSubText,
        style: context.textTheme.bodySmall?.copyWith(color: ColorValues.grey50),
        children: [
          TextSpan(
            text: ' ${context.l10n.loginSubText2}',
            style: context.textTheme.bodySmall?.copyWith(
              color: ColorValues.primary50,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {
              appRouter.replace(const LoginRoute());
            },
          ),
        ],
      ),
    );
  }
}
