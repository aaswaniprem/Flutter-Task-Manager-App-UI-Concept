import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_blue/Screens/task_detail.dart';
import 'package:todo_app_blue/Widgets/AppColour.dart';
import 'package:todo_app_blue/Widgets/size_config.dart';
import 'package:todo_app_blue/Widgets/titleContainer.dart';




class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Map<String, String>> taskData = [
    {"text": "Design Study", "image": "assets/task1.png"},
    {"text": "Colour Case Study", "image": "assets/task2.png"},
    {"text": "Project Preview", "image": "assets/task3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(gradient: AppColor.background),
        child: Stack(
          children: [
            Positioned(
                top: getProportionateScreenHeight(35.0),
                child: Container(
                  height: SizeConfig.screenHeight * 0.29,
                  width: SizeConfig.screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        //profile

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello,",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize:
                                          getProportionateScreenWidth(25.0)),
                                ),
                                Text(
                                  "Prem Aaswani",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          getProportionateScreenWidth(25.0),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              child: Image.asset(
                                "assets/profile.png",
                                height: getProportionateScreenHeight(50.0),
                                width: getProportionateScreenWidth(50.0),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),

                        //calendar
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(10.0),
                                vertical: getProportionateScreenHeight(10.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DateContainer(date: "12", month: "Sat"),
                                YellowDate(date: "13", month: "Sun"),
                                DateContainer(date: "14", month: "Mon"),
                                DateContainer(date: "15", month: "Tue"),
                                DateContainer(date: "16", month: "Wed"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(getProportionateScreenHeight(40.0)),
                        topRight: Radius.circular(
                            getProportionateScreenHeight(40.0))),
                    gradient: AppColor.background2),
                height: SizeConfig.screenHeight * 0.62,
                width: SizeConfig.screenWidth,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(20.0),
                      left: getProportionateScreenWidth(30.0),
                      right: getProportionateScreenWidth(30.0)),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: taskData.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, position) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(8.0),
                              vertical: getProportionateScreenHeight(8.0)),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TaskDetail()));
                              },
                              child: taskContainer(
                                  height: SizeConfig.screenHeight * 0.15,
                                  width: width,
                                  image: taskData[position]["image"],
                                  title: taskData[position]["text"])),
                        );
                      }),
                ),
              ),
            ),
            Positioned(
                top: SizeConfig.screenHeight * 0.29,
                left: getProportionateScreenWidth(40.0),
                child: Container(
                  height: getProportionateScreenHeight(45.0),
                  width: getProportionateScreenWidth(100.0),
                  decoration: BoxDecoration(
                      gradient: AppColor.bluebutton,
                      borderRadius: BorderRadius.all(
                          Radius.circular(getProportionateScreenHeight(40.0)))),
                  child: Center(
                    child: Text(
                      "Today",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget taskContainer(
      {double height, double width, String title, String image}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Color(0xffFDFEFE),
          borderRadius: BorderRadius.all(
              Radius.circular(getProportionateScreenHeight(20.0))),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getProportionateScreenHeight(20.0),
            ),
            child: Container(
                height: getProportionateScreenHeight(80.0),
                width: getProportionateScreenWidth(100.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 5.0, bottom: getProportionateScreenHeight(20.0)),
            child: Padding(
              padding: EdgeInsets.only(top: getProportionateScreenHeight(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff351858).withOpacity(0.8),
                        fontSize: getProportionateScreenWidth(18.0),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "07:00AM-09:00AM ",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: getProportionateScreenWidth(12.0),
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleContainer(
                        height: getProportionateScreenHeight(28.0),
                        width: getProportionateScreenWidth(75.0),
                        text: "Productive",
                        fsize: 10.0,
                        color: AppColor.backblue,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TitleContainer(
                          height: getProportionateScreenHeight(28.0),
                          width: getProportionateScreenWidth(75.0),
                          text: "Event",
                          fsize: 10.0,
                          color: AppColor.backred,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 5),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }

  Widget DateContainer({String date, String month}) {
    return Padding(
      padding: EdgeInsets.only(top: getProportionateScreenHeight(10.0)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
        ),
        height: getProportionateScreenHeight(82.0),
        width: getProportionateScreenWidth(55.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(30.0),
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Text(
              month,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(20.0),
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }

  Widget YellowDate({String date, String month}) {
    return Padding(
      padding: EdgeInsets.only(top: getProportionateScreenHeight(10.0)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            gradient: AppColor.orangebutton,
            boxShadow: [
              BoxShadow(
                color: AppColor.orange2.withOpacity(0.2),
                blurRadius: 25.0, // soften the shadow
                //extend the shadow
                offset: Offset(
                  5.0, // Move to right 10  horizontally
                  5.0, // Move to bottom 10 Vertically
                ),
              )
            ]),
        height: getProportionateScreenHeight(82.0),
        width: getProportionateScreenWidth(55.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(30.0),
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              month,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(20.0),
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
