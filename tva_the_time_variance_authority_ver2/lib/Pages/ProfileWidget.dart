import 'package:flutter/material.dart';
import 'VariablesDataClass.dart';


class ProfileWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    VariableData variableData = VariableData(context);
    return Container(
      height: variableData.screenHeight() * 0.889,
      color: Colors.blue,
    );
  }
}