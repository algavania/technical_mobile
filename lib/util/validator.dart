import 'package:flutter/material.dart';
import 'package:technical_mobile/l10n/l10n.dart';

class Validator {
  Validator({required this.context});

  final BuildContext context;

  String? emptyValidator(String? text) {
    if (text == null) return context.l10n.emptyValidatorMessage;
    if (text.trim().isEmpty) return context.l10n.emptyValidatorMessage;
    return null;
  }

  String? emailValidator(String? email) {
    const emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final emailRegExp = RegExp(emailPattern);

    if (email == null || email.trim().isEmpty) {
      return context.l10n.emptyValidatorMessage;
    } else if (!emailRegExp.hasMatch(email)) {
      return context.l10n.invalidEmail;
    }
    return null;
  }

  String? passwordConfirmationValidator(
    String? password,
    String? passwordConfirmation,
  ) {
    if (password == null || passwordConfirmation == null) {
      return context.l10n.emptyValidatorMessage;
    }
    if (password.trim().isEmpty || passwordConfirmation.trim().isEmpty) {
      return context.l10n.emptyValidatorMessage;
    }
    if (password != passwordConfirmation) {
      return context.l10n.passwordConfirmationError;
    }
    return null;
  }
}
