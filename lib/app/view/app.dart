import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:technical_mobile/core/app_theme_data.dart';
import 'package:technical_mobile/core/color_values.dart';
import 'package:technical_mobile/l10n/l10n.dart';
import 'package:technical_mobile/routes/router.dart';

final appRouter = AppRouter();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, __, ___) {
        return GlobalLoaderOverlay(
          overlayWidgetBuilder: (_) =>
          const Center(
            child: SpinKitChasingDots(
              color: ColorValues.primary50,
            ),
          ),
          child: MaterialApp.router(
            theme: AppThemeData.getTheme(context),
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
