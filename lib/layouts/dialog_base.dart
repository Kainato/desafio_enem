import 'package:flutter/material.dart';

class DialogBase extends StatelessWidget {
  /// Lista de widgets filhos
  final List<Widget> children;

  /// Título do diálogo
  final String title;

  /// Ícone do diálogo
  final IconData? icon;

  /// Rótulo do botão de ação
  final String label;

  /// Ações do diálogo
  final List<Widget>? actions;

  /// Componente base para diálogos
  const DialogBase({
    super.key,
    this.icon,
    required this.title,
    required this.children,
    this.label = 'Fechar',
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AlertDialog(
        icon: icon != null ? Icon(icon) : null,
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
        actions: actions ??
            <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(label),
              ),
            ],
      ),
    );
  }
}
