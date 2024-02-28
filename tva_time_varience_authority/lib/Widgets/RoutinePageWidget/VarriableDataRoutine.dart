import 'package:flutter/material.dart';

class VariableDataRoutine {
  BuildContext context;
  VariableDataRoutine(this.context);
  double screenHeight() {
    return MediaQuery.of(context).size.height;
  }
  double screenWidth() {
    return MediaQuery.of(context).size.width;
  }

  double titleFontSize() {
    return screenHeight() / 45;
  }

  double ContainerActionInTaskHeight() {
    return screenHeight() /6;
  }

  double ContainerTaskHeight() {
    return screenHeight() / 11;
  }

  double TimebarChangeButtonHeight(){
    return screenHeight() / 10;
  }

  double TimebarChangeButtonWidth(){
    return screenWidth() / 10;
  }




}
