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
  double titleFontSize() {
    return screenHeight() / 45;
  }
  double ContainerHeight0() {
    return screenHeight() / 4.5;
  }
  double ContainerHeight1() {
    return screenHeight() / 6;
  }
}
