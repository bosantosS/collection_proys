import 'package:collection_proys/src/ui/contants.dart';

import 'package:flutter/material.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({
    Key key,
    @required this.width,
    @required this.height, 
    this.isPrimary = true,
  }) : super(key: key);

  final double width;
  final double height;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width - 16.0,
      height: (this.height * 0.01),
      color: this.isPrimary
        ? kActionColor.withOpacity(0.4)
        : kCancelColor.withOpacity(0.4),
    );
  }
}