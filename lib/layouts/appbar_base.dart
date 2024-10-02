// create a class who extends appbar
import 'package:flutter/material.dart';

class AppBarBase extends StatelessWidget implements PreferredSizeWidget {
  /// Título da appbar. Aparece no canto esquerdo da appbar
  final String title;

  /// Widget que aparece no canto esquerdo da appbar
  final Widget? leading;

  /// Ações que aparecem no canto direito da appbar
  final List<Widget>? actions;

  /// Um appbar base para ser usada em todas as telas
  const AppBarBase({
    super.key,
    required this.title,
    this.leading,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      title: Text(title),
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
