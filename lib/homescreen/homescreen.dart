import 'package:flutter/material.dart';

import '../homescreen/column_children.dart';

class HomeScreenBlock extends StatelessWidget {
  const HomeScreenBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      bool isMobile = constraint.maxWidth < 1100;
      return SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              minHeight: constraint.maxHeight - ((!isMobile) ? 160 : 0)),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 179, 0, 0.48), Color.fromRGBO(251, 140, 0, 0.60),
                ]),
            borderRadius: BorderRadius.circular((isMobile) ? 0 : 8),
            border: Border.all(
              color: Colors.black,
              width: (isMobile) ? 0 : 5.0,
            ),
          ),
          margin:
              (isMobile) ? const EdgeInsets.all(0) : const EdgeInsets.all(80),
          child: ColumnChildren(constraint, isMobile),
        ),
      );
    });
  }
}
