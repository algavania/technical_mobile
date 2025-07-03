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
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _bloc = Injector.instance<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: _bloc,
      listener: (context, state) {
        state.loginStatus.maybeMap(
          loading: (_) {
            context.loaderOverlay.show();
          },
          error: (error) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: error.message, isSuccess: false);
          },
          data: (data) {
            context.loaderOverlay.hide();
            appRouter.replace(const HomeRoute());
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
                            context.l10n.login,
                            style: context.textTheme.titleMedium,
                          ),
                          1.5.h.vertical,
                          Text(
                            context.l10n.loginText2,
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
                          _buildForgotPasswordWidget(),
                          26.vertical,
                          _buildLoginButtonWidget(),
                          const Spacer(),
                          3.h.vertical,
                          _buildRegisterTextWidget(),
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

  Widget _buildForgotPasswordWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          context.l10n.forgotPassword,
          style: context.textTheme.displaySmall,
        ),
      ],
    );
  }

  Widget _buildLoginButtonWidget() {
    return CustomButton(
      buttonText: context.l10n.login,
      onPressed: () {
        if (_formKey.currentState?.validate() ?? true) {
          final email = _emailController.text.trim();
          final password = _passwordController.text;
          _bloc.add(AuthEvent.login(email, password));
        }
      },
    );
  }

  Widget _buildRegisterTextWidget() {
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
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                appRouter.replace(const RegisterRoute());
              },
          ),
        ],
      ),
    );
  }
}
