import 'package:desafio_enem/widgets/list_tile_base.dart';
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  /// O título do ListTile, que é o texto principal.
  /// Fica à direita do ícone `leading`.
  final String title;

  /// O ícone do ListTile serve para identificar o item.
  /// Fica à esquerda do título `title`.
  final Widget leading;

  /// Função que será chamada quando o ListTile for clicado.
  /// Se não for passada, o ListTile não será clicável.
  ///
  /// Exemplo:
  /// ```dart
  /// ListTile(
  ///   onTap: () {
  ///    if (ModalRoute.of(context)?.settings.name == route) {
  ///       Navigator.of(context).pop();
  ///       return;
  ///     } else {
  ///       Navigator.of(context).popAndPushNamed(route);
  ///     }
  ///   }
  /// )
  /// ```
  final void Function()? onTap;

  /// Se o ListTile está selecionado. Normalmente é usado para
  /// destacar o item do menu lateral em que a rota atual está.
  /// ```dart
  /// ListTile(
  ///   selected: ModalRoute.of(context)?.settings.name == AppRoutes.chooseRoute.route,
  /// )
  /// ```
  final bool selected;

  /// Um ListTile padronizado para ser usado no Drawer
  const DrawerListTile({
    super.key,
    required this.title,
    required this.leading,
    this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTileBase(
      style: ListTileStyle.drawer,
      selected: selected,
      title: title,
      leading: leading,
      trailing: selected ? const Icon(Icons.arrow_forward_ios) : null,
      onTap: onTap,
    );
  }
}
