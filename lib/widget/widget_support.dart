import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFeildStyle() {
    return TextStyle(
      
      fontSize: 20,
      fontWeight: FontWeight.bold,
      
    );
  }

  static TextStyle HeadlineTextFeildStyle() {
    return TextStyle(
      color:  Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold
      
    );
  }

   static TextStyle LightTextFeildStyle() {
    return TextStyle(
      color:  Colors.black38,
      fontSize: 15,
      fontWeight: FontWeight.w800, 
      
    );
  }

   static TextStyle semiBooldTextTextFeildStyle() {
    return TextStyle(
      color:  Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold, 
      
    );
  }
}
