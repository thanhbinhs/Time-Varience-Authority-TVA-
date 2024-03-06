import 'package:flutter/material.dart';
import 'VariablesDataClass.dart';


class LibraryWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    VariableData variableData = VariableData(context);
    return Container(
      height: variableData.screenHeight(),
      color: Colors.orange,

    );
  }
}

