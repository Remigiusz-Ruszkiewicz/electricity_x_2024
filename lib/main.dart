import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/login_view.dart';
import 'package:electricity_x_2024/src/resources/themes/dark/dark_theme.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      saveLocale: true,
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('pl', 'PL'),
      ],
      path: 'assets/languages',
      child: const MyApp(),
    ),
  );
}

Size? backgroundSize;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext context) {
          backgroundSize ??= MediaQuery.of(context).size;
          return const LoginView();
        },
      ),
    );
  }
}
