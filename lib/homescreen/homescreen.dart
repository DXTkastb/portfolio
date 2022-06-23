import 'package:flutter/material.dart';
import 'package:portfolio/homescreen/ColumnChildren.dart';
import 'package:portfolio/displaysize.dart';
class HomeScreenBlock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context, constraint) {

      var ismob=true;
      if (constraint.maxHeight > 750 && constraint.maxWidth > 1110)
        ismob=false;
        return MainContainer(constraint.maxHeight, constraint.maxWidth,ismob);

    });
  }
}

class MainContainer extends StatelessWidget {
  final double height;
  final double width;
final bool constraints;
  const MainContainer(this.height, this.width, this.constraints);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.5),
        color:
          Colors.amber.shade600,
      ),
      constraints: BoxConstraints(minHeight: height),
      margin: (constraints)?const EdgeInsets.all(0): EdgeInsets.all((DisplaySize.width_screen*0.040)),
      child: ColumnChildren(width,constraints),
    );
  }
}
