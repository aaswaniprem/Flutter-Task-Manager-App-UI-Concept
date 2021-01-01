import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:todo_app_blue/Screens/HomePagee.dart';
import 'package:todo_app_blue/Splash%20Screen/splash_content.dart';
import 'package:todo_app_blue/Widgets/AppColour.dart';
import 'package:todo_app_blue/Widgets/constants.dart';
import 'package:todo_app_blue/Widgets/size_config.dart';


// This is the best practice


class Bodyy extends StatefulWidget {
  @override
  _BodyyState createState() => _BodyyState();
}

class _BodyyState extends State<Bodyy> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "It is very difficult to manage everything ,find "
          "your virtual Manager today for manage your work and time",
      "image": "assets/splash1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/splash2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/splash3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(gradient: AppColor.redbackground),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: SizeConfig.screenHeight * 0.7,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft:
                              Radius.circular(getProportionateScreenHeight(40.0)),
                          bottomRight: Radius.circular(
                              getProportionateScreenHeight(40.0))),
                      gradient: AppColor.background2,
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.backblue.withOpacity(0.1),
                          blurRadius: 50.0, // soften the shadow
                          spreadRadius: 5.0, //extend the shadow
                          offset: Offset(
                            5.0, // Move to right 10  horizontally
                            5.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: SizeConfig.screenHeight * 0.5,
                        width: SizeConfig.screenWidth,
                        child: PageView.builder(
                          onPageChanged: (value) {
                            setState(() {
                              currentPage = value;
                            });
                          },
                          itemCount: splashData.length,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(20.0)),
                            child: SplashContent(
                              image: splashData[index]["image"],
                              text: splashData[index]['text'],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(20)),
                            child: Column(
                              children: <Widget>[
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    splashData.length,
                                    (index) => buildDot(index: index),
                                  ),
                                ),
                                Spacer(flex: 3),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 80,
                  right: 80,
                  top: SizeConfig.screenHeight * 0.65,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePagee()));
                    },
                    child: Container(
                      height: getProportionateScreenHeight(80.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: AppColor.redbutton,
                          ),
                      width: 80,
                      child: Icon(Icons.arrow_forward ,
                      color: Colors.white,
                      ),
                    ),
                  )),
              Positioned(
                  bottom: getProportionateScreenHeight(50.0),
                  left: 45,
                  right: 45.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [SignupContainer(), SigninContainer()],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget SigninContainer() {
    return Container(
      height: getProportionateScreenHeight(48.0),
      width: getProportionateScreenWidth(115),
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(getProportionateScreenHeight(15.0)),
          gradient: AppColor.bluebutton),
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget SignupContainer() {
    return Container(
      height: getProportionateScreenHeight(48.0),
      width: getProportionateScreenWidth(115),
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(getProportionateScreenHeight(15.0)),
          color: Colors.white),
      child: Center(
        child: Text(
          "Sign Up",
          style: TextStyle(
            color: AppColor.darkblue,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? AppColor.darkblue : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
