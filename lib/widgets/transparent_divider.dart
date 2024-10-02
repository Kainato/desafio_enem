import 'package:flutter/material.dart';

class TransparentDivider extends Divider {
  final double height;
  const TransparentDivider({
    super.key,
    this.height = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.transparent,
      height: height,
      thickness: 0,
      indent: 0,
      endIndent: 0,
    );
  }
}
