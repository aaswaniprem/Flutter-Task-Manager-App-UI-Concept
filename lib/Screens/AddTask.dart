import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_blue/Widgets/AnimatedButton.dart';
import 'package:todo_app_blue/Widgets/AppColour.dart';
import 'package:todo_app_blue/Widgets/size_config.dart';
import 'package:todo_app_blue/Widgets/titleContainer.dart';

class addTask extends StatelessWidget {
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
                top: getProportionateScreenHeight(40.0),
                child: Container(
                  height: SizeConfig.screenHeight * 0.35,
                  width: SizeConfig.screenWidth,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(30.0),
                      vertical: getProportionateScreenHeight(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Task Name",
                          style: TextStyle(
                              color: AppColor.darkblue,
                              fontSize: getProportionateScreenWidth(20.0),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(5.0)),
                          child: Text(
                            "Meeting With Boss",
                            style: TextStyle(
                                color: AppColor.textcolor,
                                fontSize: getProportionateScreenWidth(24.0),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(10.0)),
                        Divider(
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(5.0)),
                          child: Text(
                            "Description",
                            style: TextStyle(
                                color: AppColor.darkblue,
                                fontSize: getProportionateScreenWidth(20.0),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(10.0)),
                        Text(
                          "Color theory is the basis for the primary rules and guidelines that surround color and its use them in"
                          "creating aesthetically pleasing visuals",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w400,
                              fontSize: getProportionateScreenWidth(12.0)),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: getProportionateScreenHeight(10.0)),
                        Divider(
                          thickness: 1.0,
                        ),
                      ],
                    ),
                  ),
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
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20.0),
                        vertical: getProportionateScreenHeight(20.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: getProportionateScreenHeight(200.0),
                          width: SizeConfig.screenWidth,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(
                              getProportionateScreenHeight(20.0)),
                        ),
                        AnimatedButton(
                            image: "assets/reminder2.png", text: "Remind Me"),
                        SizedBox(
                          height: getProportionateScreenHeight(
                              getProportionateScreenHeight(20.0)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(20.0)),
                          child: Text(
                            "Category",
                            style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: getProportionateScreenWidth(15.0)),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(
                              getProportionateScreenHeight(10.0)),
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
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(10.0)),
                              child: TitleContainer(
                                text: "Productive",
                                color: Colors.red,
                                fsize: 10.0,
                                height: getProportionateScreenHeight(30),
                                width: getProportionateScreenWidth(80.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ],
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
}
