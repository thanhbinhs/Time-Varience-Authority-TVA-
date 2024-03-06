import 'package:flutter/material.dart';


class VariableData {
  BuildContext context;
  VariableData(this.context);
  double screenHeight() {
    return MediaQuery.of(context).size.height;
  }
  double screenWidth() {
    return MediaQuery.of(context).size.width;
  }

  List<Color> colorList = [
    Color.fromARGB(255, 255, 200, 223),
    Color.fromARGB(255, 255, 235, 205),
    Color.fromARGB(255, 255, 250, 180),
    Color.fromARGB(255, 220, 235, 220),
    Color.fromARGB(255, 224, 255, 255),
    Color.fromARGB(255, 218, 190, 238),
    Color.fromARGB(255, 195, 195, 195),
  ];
  Color colorBackGround = Color.fromARGB(255, 243, 239, 255);

  Color colorIsPressed =   Color.fromARGB(255, 210, 181, 255);
  Color colorCurDay = Color.fromARGB(255, 210, 141, 255);

  String changeFormatDay(int dayNumber) {
    if(dayNumber > 7){
      dayNumber = dayNumber % 7;
      if(dayNumber == 0) {
        dayNumber = 7;
      }
    }
    String formattedDay = '';
    switch (dayNumber) {
      case 1:
        formattedDay = 'Mo';
        break;
      case 2:
        formattedDay = 'Tu';
        break;
      case 3:
        formattedDay = 'We';
        break;
      case 4:
        formattedDay = 'Th';
        break;
      case 5:
        formattedDay = 'Fr';
        break;
      case 6:
        formattedDay = 'Sa';
        break;
      case 7:
        formattedDay = 'Su';
        break;
    }
    return formattedDay;
  }






}