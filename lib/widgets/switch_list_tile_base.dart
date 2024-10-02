import 'package:flutter/material.dart';

class SwitchListTileBase extends StatelessWidget {
  /// O título do ListTile, que é o texto principal.
  /// Fica à direita do ícone `leading`.
  final String title;

  /// O subtítulo do ListTile, que é o texto secundário.
  /// Fica abaixo do título `title`.
  final Widget? subtitle;

  /// O widget do ListTile serve para identificar o item.
  /// Fica à esquerda do título `title`.
  final Widget? leading;

  /// O valor do SwitchListTile, que indica se o switch está ligado ou desligado.
  final bool value;

  /// Função que será chamada quando o ListTile for clicado.
  /// Se não for passada, o ListTile não será clicável.
  final void Function(bool)? onTap;

  /// Um ListTile padronizado para ser usado no Drawer
  const SwitchListTileBase({
    super.key,
    required this.title,
    this.leading,
    required this.value,
    this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: const EdgeInsets.all(0),
      mouseCursor: WidgetStateMouseCursor.clickable,
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: subtitle,
      secondary: leading,
      value: value,
      onChanged: onTap,
    );
  }
}
