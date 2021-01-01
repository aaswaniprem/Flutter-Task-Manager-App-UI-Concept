import 'package:flutter/material.dart';
import 'package:todo_app_blue/Widgets/size_config.dart';


class TitleContainer extends StatelessWidget {
  double height;
  double width;
  Color color;
  String text;
  double fsize;

  TitleContainer({this.height, this.width, this.color, this.text , this.fsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(getProportionateScreenHeight(10.0))),
        color: color.withOpacity(0.3),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: color, fontWeight: FontWeight.w600 , fontSize: fsize),
        ),
      ),
    );
  }
}
