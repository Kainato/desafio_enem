import 'package:flutter/material.dart';

class ListTileBase extends StatelessWidget {
  /// O título do ListTile, que é o texto principal.
  /// Fica à direita do ícone `leading`.
  final String title;

  /// O subtítulo do ListTile, que é o texto secundário.
  /// Fica abaixo do título `title`.
  final Widget? subtitle;

  /// O widget do ListTile serve para identificar o item.
  /// Fica à esquerda do título `title`.
  final Widget? leading;

  /// O widget do ListTile serve para indicar que o item é clicável.
  /// Fica à direita do título `title`.
  final Widget? trailing;

  /// Função que será chamada quando o ListTile for clicado.
  /// Se não for passada, o ListTile não será clicável.
  final void Function()? onTap;

  /// Se o ListTile está selecionado. Normalmente é usado para
  /// destacar o item do menu lateral em que a rota atual está.
  /// ```dart
  /// ListTile(
  ///   selected: ModalRoute.of(context)?.settings.name == AppRoutes.chooseRoute.route,
  /// )
  /// ```
  final bool selected;

  /// O estilo do ListTile.
  final ListTileStyle style;

  /// O padding do conteúdo do ListTile.
  final EdgeInsetsGeometry? contentPadding;

  /// Um ListTile padronizado para ser usado no Drawer
  const ListTileBase({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.onTap,
    this.subtitle,
    this.selected = false,
    this.contentPadding,
    this.style = ListTileStyle.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: selected,
      contentPadding: contentPadding,
      mouseCursor: WidgetStateMouseCursor.clickable,
      style: style,
      title: Text(title),
      subtitle: subtitle,
      leading: leading,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
