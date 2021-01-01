import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_blue/Widgets/AnimatedButton.dart';
import 'package:todo_app_blue/Widgets/AppColour.dart';
import 'package:todo_app_blue/Widgets/size_config.dart';
import 'package:todo_app_blue/Widgets/titleContainer.dart';


class TaskDetail extends StatelessWidget {
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
              top: 0,
              child: Container(
                height: SizeConfig.screenHeight * 0.5,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0)),
                    gradient: AppColor.background2,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.lightblue.withOpacity(0.3),
                        blurRadius: 50.0, // soften the shadow
                        spreadRadius: 10.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          12.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(60.0)),
                          child: Container(
                            child: Image.asset(
                              "assets/task1.png",
                              height: getProportionateScreenHeight(160),
                              width: getProportionateScreenWidth(220),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15.0)),
                      Text(
                        "Colour Case Study",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(20.0),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10.0),
                      ),
                      Text(
                        "Color theory is the basis for the primary rules and guidelines that surround color and its use them in"
                            "creating aesthetically pleasing visuals",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: getProportionateScreenWidth(12.0)),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(12.0),
                      ),
                      Row(
                        children: [
                          TitleContainer(
                            text: "Working",
                            color: Colors.blue,
                            fsize: 10.0,
                            height: getProportionateScreenHeight(30),
                            width: getProportionateScreenWidth(80.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TitleContainer(
                              text: "Productive",
                              color: Colors.red,
                              fsize: 10.0,
                              height: getProportionateScreenHeight(30),
                              width: getProportionateScreenWidth(80.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: SizeConfig.screenHeight * 0.11,
                  width: SizeConfig.screenWidth,
                  color: Colors.white,
                  child: Center(
                    child: EditTask(),
                  ),
                )),
            Positioned(
                bottom: SizeConfig.screenHeight * 0.13,
                left: 50,
                right: 50,
                child: AnimatedButton(image: "assets/reminder2.png",text: "Remind Me",)),
            // Positioned(bottom: 220, child: TimeContainer()),
            Positioned(
                bottom: SizeConfig.screenHeight * 0.25,
                child: Container(
                  height: SizeConfig.screenHeight * 0.2,
                  width: SizeConfig.screenWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          menuItem(
                              title: "14July ,2020",
                              sub: "Date",
                              tcolor: Colors.blue,
                              img: "assets/date.png"),
                          menuItem(
                              title: "GMT+6",
                              sub: "Time Zone",
                              tcolor: Colors.red,
                              img: "assets/time.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          menuItem(
                              title: "4:30 PM ",
                              sub: "Task Start",
                              tcolor: Colors.orange,
                              img: "assets/taskh.png"),
                          menuItem(
                              title: "6:30 PM",
                              sub: "Task End",
                              tcolor: AppColor.darkblue,
                              img: "assets/taskend.png"),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget EditTask() {
    return Container(
      height: getProportionateScreenHeight(60),
      width: SizeConfig.screenWidth * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: AppColor.bluebutton),
      child: Center(
        child: Text(
          "Edit Task",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(15.0)),
        ),
      ),
    );
  }

  Widget menuItem({String title, String sub, String img, Color tcolor}) {
    return Container(
      height: getProportionateScreenHeight(65.0),
      width: getProportionateScreenWidth(160.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(9.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.lightblue.withOpacity(0.2),
              blurRadius: 30.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                12.0, // Move to bottom 10 Vertically
              ),
            )
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(10.0)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: Image.asset(
                  img,
                  height: getProportionateScreenHeight(40.0),
                  width: getProportionateScreenWidth(40.0),
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(8.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: tcolor,
                          fontSize: getProportionateScreenWidth(13.0))),
                  Text(
                    sub,
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(12.0)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget TimeContainer() {
    return Container(
      color: Colors.yellow,
      height: SizeConfig.screenHeight * 0.09,
      width: SizeConfig.screenWidth * 0.8,
    );
  }
}
