// Definição da enumeração para as rotas
import 'package:desafio_enem/app/home_page.dart';
import 'package:desafio_enem/app/settings_page.dart';
import 'package:flutter/material.dart';

/// Enumeração para as rotas da aplicação
enum AppRoutes {
  home,
  settings,
}

/// Extensão para converter a enumeração em uma string
extension AppRoutesExtension on AppRoutes {
  String get route {
    switch (this) {
      case AppRoutes.home:
        return '/home';
      case AppRoutes.settings:
        return '/settings';
      default:
        return '';
    }
  }

  Widget get page {
    switch (this) {
      case AppRoutes.home:
        return const HomePage();
      case AppRoutes.settings:
        return const SettingsPage();
      default:
        return const HomePage();
    }
  }
}

/// Definição das rotas usando a enumeração
Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.home.route: (context) => const HomePage(),
  AppRoutes.settings.route: (context) => const SettingsPage(),
};
