import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_mobile/core/app_theme_data.dart';
import 'package:technical_mobile/core/color_values.dart';
import 'package:technical_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technical_mobile/features/home/presentation/bloc/user_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/routes/router.dart';
import 'package:technical_mobile/util/logger.dart';

final appRouter = AppRouter();
final appLinks = AppLinks();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  StreamSubscription<dynamic>? _linkSub;

  @override
  void initState() {
    super.initState();
    _initDeepLinkListener();
  }

  void _initDeepLinkListener() {
    _linkSub = appLinks.uriLinkStream.listen(
      (uri) {
        logger.i('Deep link received: $uri');
        final token = uri.queryParameters['token'];
        logger.i('Token from deep link: $token ${uri.queryParameters}');

        if (token != null) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            if (appRouter.current.name == SplashRoute.name) {
              Future.delayed(const Duration(seconds: 3), () {
                appRouter.push(
                  ResetPasswordRoute(token: token),
                );
              });
              return;
            }
            appRouter.push(
              ResetPasswordRoute(token: token),
            );
          });
        }
      },
      onError: (dynamic err) {
        logger.e('Deep link error: $err');
      },
    );
  }

  @override
  void dispose() {
    _linkSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, __, ___) {
        return GlobalLoaderOverlay(
          overlayWidgetBuilder: (_) => const Center(
            child: SpinKitChasingDots(
              color: ColorValues.primary50,
            ),
          ),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => Injector.instance<AuthBloc>()),
              BlocProvider(create: (_) => Injector.instance<UserBloc>()),
            ],
            child: MaterialApp.router(
              theme: AppThemeData.getTheme(context),
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              debugShowCheckedModeBanner: false,
            ),
          ),
        );
      },
    );
  }
}
