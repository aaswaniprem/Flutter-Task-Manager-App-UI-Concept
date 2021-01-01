import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_blue/Widgets/AnimatedButton.dart';
import 'package:todo_app_blue/Widgets/AppColour.dart';
import 'package:todo_app_blue/Widgets/size_config.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(gradient: AppColor.redbackground),
        child: Stack(
          children: [
            Positioned(
                top: getProportionateScreenHeight(50.0),
                left: getProportionateScreenWidth(80.0),
                right: getProportionateScreenWidth(80.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: AppColor.lightblue.withOpacity(0.3),
                          blurRadius: 25.0,
                          // soften the shadow
                          //extend the shadow
                          offset: Offset(
                            5.0, // Move to right 10  horizontally
                            5.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ]),
                      child: Image.asset(
                        "assets/profile.png",
                        height: getProportionateScreenHeight(120.0),
                        width: getProportionateScreenWidth(120.0),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Prem Aaswani",
                      style: TextStyle(
                          color: AppColor.textcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(20.0)),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5.0),
                    ),
                    Text(
                      "Age 19",
                      style: TextStyle(
                          color: AppColor.textcolor.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(20.0)),
                    )
                  ],
                )),
            Positioned(
                bottom: 0,
                child: Container(
                  height: SizeConfig.screenHeight * 0.6,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(getProportionateScreenHeight(30.0)),
                        topRight: Radius.circular(
                            getProportionateScreenHeight(30.0))),
                    gradient: AppColor.background2,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.lightblue.withOpacity(0.3),
                        blurRadius: 50.0, // soften the shadow
                        spreadRadius: 25.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          12.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(50.0)),
                    child: ListView(
                      children: [
                        AnimatedButton(image: "assets/time_zone.png", text: "Use by Time Zone"),
                        SizedBox(height: getProportionateScreenHeight(30.0)),
                        AnimatedButton(image: "assets/event.png", text: "Show All Event"),
                        SizedBox(height: getProportionateScreenHeight(30.0)),
                        AnimatedButton(image: "assets/reminder.png", text: "Email Reminder"),
                        SizedBox(height: getProportionateScreenHeight(30.0)),
                        AnimatedButton(image: "assets/support.png", text: "Help & Support")
                      ],
                    ),
                  ),
                )),
            Positioned(
                bottom: SizeConfig.screenHeight * 0.56,
                left: 50,
                right: 50,
                child: Container(
                  height: getProportionateScreenHeight(60.0),
                  width: SizeConfig.screenWidth * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    gradient: AppColor.purplebutton,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: getProportionateScreenWidth(50.0),
                        height: getProportionateScreenHeight(45.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.view_headline ,
                        color: AppColor.textcolor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(20.0)),
                        child: Text(
                          "Swipe to Edit Profile",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
