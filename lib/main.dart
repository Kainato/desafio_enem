import 'package:desafio_enem/app/home_page.dart';
import 'package:desafio_enem/config/app_routes.dart';
import 'package:desafio_enem/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isDarkMode = prefs.getBool('isDarkMode') ?? false;
  runApp(MainApp(isDarkMode: isDarkMode));
}

class MainApp extends StatelessWidget {
  final bool isDarkMode;
  const MainApp({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      // initialRoute: '/home',
      title: 'Desafio ENEM',
      locale: const Locale('pt', 'BR'),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const HomePage(),
    );
  }
}
