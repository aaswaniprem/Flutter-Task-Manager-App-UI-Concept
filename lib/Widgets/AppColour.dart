import 'package:flutter/material.dart';

class AppColor {
  static final LinearGradient background = LinearGradient(
    colors: [backwhit, backred.withOpacity(0.4)],
    begin: Alignment.topRight,
    end: Alignment(-4, 4),
  );

  static final LinearGradient splash = LinearGradient(
    colors: [backred.withOpacity(0.3), backwhit, backblue],
    stops: [0.3, 0.7, 0.7],
    end: Alignment.topRight,
    begin: Alignment(3, 3),
  );

  static final LinearGradient redbackground = LinearGradient(
    colors: [backwhit, backred],
    begin: Alignment.bottomCenter,
    end: Alignment(5, 1),
  );

  static final LinearGradient background2 = LinearGradient(
    colors: [Colors.white, backblue],
    begin: Alignment.topLeft,
    end: Alignment(5, -4),
  );
  static final LinearGradient bluebutton = LinearGradient(
    colors: [lightblue, darkblue],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );

  static final LinearGradient orangebutton = LinearGradient(
    colors: [orange1, orange2],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );

  static final LinearGradient purplebutton = LinearGradient(
    colors: [purple, darkpurple],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );


  static final LinearGradient redbutton = LinearGradient(
    colors: [backred, darkred],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static Color darkpurple = Color(0xff3C5073);
  static Color purple = Color(0xff7395c8);
  static Color orange1 = Color(0xffFFD099);
  static Color orange2 = Color(0xffFE9B4B);
  static Color backcolor = Colors.red;
  static Color backred = Color(0xffFF9082);
  static Color darkred = Color(0xffFE705D);
  static Color textcolor = Color(0xff1E2843);
  static Color backwhit = Color(0xffFAFAFA);
  static Color backblue = Color(0xff3EC8FA).withOpacity(0.6);
  static Color lightblue = Color(0xff92E2FF);
  static Color darkblue = Color(0xff1DBEF9);
}
