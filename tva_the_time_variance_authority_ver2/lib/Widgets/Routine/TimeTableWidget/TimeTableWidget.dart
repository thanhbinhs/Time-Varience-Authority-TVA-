import 'package:flutter/material.dart';
import 'package:tva_the_time_variance_authority_ver2/Widgets/Routine/TimeTableWidget/MonthsInYearTableWidget.dart';
import '../VariablesDataRoutineClass.dart';
import 'DaysInWeekTableWidget.dart';

class TimeTableWidget extends StatefulWidget{
  @override
  State<TimeTableWidget> createState() => _TimeTableWidgetState();
}

class _TimeTableWidgetState extends State<TimeTableWidget> {

  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);

    return Container(
      height: variableData.screenHeight()*0.197,
      //color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //********************** MonthsInYearTableWWidget *****************//
          MonthsInYearTableWWidget(),

          //********************** DaysInWeekTableWidget ***********************//
          DaysInWeekTableWidget(),
        ],
      ),
    );
  }
}


