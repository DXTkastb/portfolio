import 'package:flutter/material.dart';
import '../homescreen/ColumnChildren.dart';

class HomeScreenBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      bool isMobile = constraint.maxWidth < 1100;
      return SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              minHeight: constraint.maxHeight - ((!isMobile) ? 160 : 0)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((isMobile) ? 0 : 8),
            border: Border.all(
              color: Colors.black,
              width: (isMobile) ? 0 : 5.0,
            ),
            color: Colors.amber.shade600.withOpacity(0.55),
          ),
          margin:
              (isMobile) ? const EdgeInsets.all(0) : const EdgeInsets.all(80),
          child: ColumnChildren(constraint, isMobile),
        ),
      );
    });
  }
}
