import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextStyle(){
    return TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle normalTextStyle(){
    return TextStyle(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: "Playwrite_GBS",
    );
  }
  static TextStyle foodTextStyle(){
    return TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: "Playwrite_GBS",
    );
  }
  static TextStyle fooddescriptionStyle(){
    return TextStyle(
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontFamily: "Playwrite_GBS",
    );
  }
  
}