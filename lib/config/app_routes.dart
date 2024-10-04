// Definição da enumeração para as rotas
import 'package:desafio_enem/app/home_page.dart';
import 'package:desafio_enem/app/list_provas/show_prova_page.dart';
import 'package:desafio_enem/app/settings_page.dart';
import 'package:flutter/material.dart';

/// Enumeração para as rotas da aplicação
enum AppRoutes {
  home,
  prova,
  settings,
}

/// Extensão para converter a enumeração em uma string
extension AppRoutesExtension on AppRoutes {
  String get route {
    switch (this) {
      case AppRoutes.home:
        return '/home';
      case AppRoutes.prova:
        return '/prova/';
      case AppRoutes.settings:
        return '/settings';
      default:
        return '';
    }
  }
}

/// Definição das rotas usando a enumeração
Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.home.route: (context) => const HomePage(),
  AppRoutes.prova.route: (context) => const ShowProvaPage(),
  AppRoutes.settings.route: (context) => const SettingsPage(),
};
