import 'package:desafio_enem/config/app_media.dart';
import 'package:desafio_enem/config/app_routes.dart';
import 'package:desafio_enem/config/app_theme.dart';
import 'package:desafio_enem/widgets/drawer_list_tile.dart';
import 'package:flutter/material.dart';

class DrawerBase extends StatelessWidget implements Drawer {
  /// Um drawer base para ser usada em todas as telas.
  /// Precisa ser usada dentro de um Scaffold
  const DrawerBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          AppMedia(context).isotipoTransparente.toString()),
                      fit: BoxFit.contain,
                    ),
                    color: AppTheme(context).backgroundLogo,
                  ),
                  child: Container(),
                ),
                DrawerListTile(
                  title: 'Página inicial',
                  selected: _itemSelected(context, route: AppRoutes.home.route),
                  leading: const Icon(Icons.home),
                  onTap: () => _onTapDrawerListTile(
                    context,
                    route: AppRoutes.home.route,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          DrawerListTile(
            title: 'Configurações',
            selected: _itemSelected(context, route: AppRoutes.settings.route),
            leading: const Icon(Icons.settings),
            onTap: () => _onTapDrawerListTile(
              context,
              route: AppRoutes.settings.route,
            ),
          ),
        ],
      ),
    );
  }

  bool _itemSelected(BuildContext context, {required String route}) {
    return ModalRoute.of(context)?.settings.name == route;
  }

  void _onTapDrawerListTile(BuildContext context, {required String route}) {
    if (ModalRoute.of(context)?.settings.name == route) {
      Navigator.of(context).pop();
      return;
    } else {
      Navigator.of(context).popAndPushNamed(route);
    }
  }

  @override
  Color? get backgroundColor => throw UnimplementedError();

  @override
  Widget? get child => throw UnimplementedError();

  @override
  Clip? get clipBehavior => throw UnimplementedError();

  @override
  double? get elevation => throw UnimplementedError();

  @override
  String? get semanticLabel => throw UnimplementedError();

  @override
  Color? get shadowColor => throw UnimplementedError();

  @override
  ShapeBorder? get shape => throw UnimplementedError();

  @override
  Color? get surfaceTintColor => throw UnimplementedError();

  @override
  double? get width => throw UnimplementedError();
}
