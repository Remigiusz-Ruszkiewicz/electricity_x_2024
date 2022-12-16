import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:samalert/API_bloc.dart';
import 'package:electricity_x_2024/login_view.dart';
import 'package:electricity_x_2024/src/resources/themes/dark/dark_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:async_builder/async_builder.dart';

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
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print(message.messageId);
    });
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginView(),
    );
  }
}
