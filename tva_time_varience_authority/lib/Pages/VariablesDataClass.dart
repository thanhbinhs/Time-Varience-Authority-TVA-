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
}
