import 'package:flutter/material.dart';
import 'package:todo_app_blue/Widgets/size_config.dart';




class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Container(
          child: Image.asset(
            image,
            height: getProportionateScreenHeight(250),
            width: getProportionateScreenWidth(300),
          ),
        ),

        Text(
          "Manage Your Time",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10.0)),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.black38, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
