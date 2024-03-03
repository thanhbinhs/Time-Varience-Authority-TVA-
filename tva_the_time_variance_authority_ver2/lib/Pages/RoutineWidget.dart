import 'package:flutter/material.dart';
import 'package:tva_the_time_variance_authority_ver2/Widgets/Routine/AddNewTaskPageWidget/AddNewTakPage.dart';
import '../Widgets/Routine/ListTaskWidget/ListTaskWidget.dart';
import 'VariablesDataClass.dart';



class RoutineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VariableData variableData = VariableData(context);
    return Container(
      height: variableData.screenHeight() * 0.889,
      width: variableData.screenWidth(),
      color: Color.fromRGBO(240,255,240,1),
      child: Stack(
        children: [
          ListTaskWidget(),
          AddNewTaskPageWidget(),
        ],
      ),
    );
  }
}