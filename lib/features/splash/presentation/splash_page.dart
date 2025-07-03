import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:technical_mobile/app/app.dart';
import 'package:technical_mobile/core/local_storage_service.dart';
import 'package:technical_mobile/core/styles.dart';
import 'package:technical_mobile/routes/router.dart';
import 'package:technical_mobile/util/extensions.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () async {
      final token = await LocalStorageService.getToken();
      if (token != null) {
        unawaited(context.router.replace(const HomeRoute()));
      } else {
        unawaited(context.router.replace(const LoginRoute()));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Styles.defaultPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Astronacci\nTechnical Test',
                style: context.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
