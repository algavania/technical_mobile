import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:technical_mobile/l10n/l10n.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.home),
      ),
    );
  }
}
