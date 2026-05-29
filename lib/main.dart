import 'package:el_king_store/core/utils/theme_manager.dart';
import 'package:el_king_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/utils/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
      theme: ThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: GenerateRoute.generateRoute,
      initialRoute: RouteManager.splash,
    );
  }
}
