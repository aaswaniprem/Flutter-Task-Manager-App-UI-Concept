import 'package:flutter/material.dart';
import 'package:todo_app_blue/Widgets/size_config.dart';



import 'AppColour.dart';

class AnimatedButton extends StatefulWidget {
  String image;
  String text;


  AnimatedButton({this.image, this.text});

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

bool toggleValue = false;

class _AnimatedButtonState extends State<AnimatedButton> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Center(
      child: Container(
        height: getProportionateScreenHeight(80),
        width: SizeConfig.screenWidth * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.lightblue.withOpacity(0.2),
                blurRadius: 25.0, // soften the shadow
                //extend the shadow
                offset: Offset(
                  5.0, // Move to right 10  horizontally
                  5.0, // Move to bottom 10 Vertically
                ),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(
               widget.image,
                height: getProportionateScreenHeight(40.0),
                width: getProportionateScreenWidth(40.0),
                fit: BoxFit.cover,
              ),
            ),
            Text(
             widget.text,
              style: TextStyle(
                  color: AppColor.textcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(16.0)),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              height: getProportionateScreenHeight(28.0),
              width: getProportionateScreenWidth(60.0),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: toggleValue
                      ? AppColor.darkblue
                      : Colors.redAccent[100].withOpacity(0.5)),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeIn,
                    top: getProportionateScreenHeight(4.0),
                    left: toggleValue ? getProportionateScreenWidth(20.0) : 0.0,
                    right: toggleValue ? 0.0 : getProportionateScreenWidth(20.0),
                    child: InkWell(
                      onTap: toggleButton,
                      child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 1000),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return ScaleTransition(
                              scale: animation,
                              child: child,
                            );
                          },
                          child: toggleValue
                              ? Icon(Icons.check_circle_outline,
                                  color: Colors.white,
                                  size: getProportionateScreenHeight(20.0),
                                  key: UniqueKey())
                              : Icon(
                                  Icons.remove_circle_outline,
                                  color: Colors.red,
                                  size: getProportionateScreenHeight(20.0),
                                  key: UniqueKey(),
                                )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
