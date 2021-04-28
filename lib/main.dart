// Libs and packages imports
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// Project imports
import 'package:color_generator/config/themes/theme_switcher.dart';
import 'package:color_generator/pages/home_page.dart';
import 'package:color_generator/generated/l10n.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /// Set-up Theme swithcher
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.light,
      dark: ThemeSwithcer.getDarkTheme(),
      light: ThemeSwithcer.getLightTheme(),
      builder: (dark, light) => MaterialApp(
        /// Project localization
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Random Color Generator',
        theme: light,
        darkTheme: dark,
        home: HomePage(),
      ),
    );
  }
}



