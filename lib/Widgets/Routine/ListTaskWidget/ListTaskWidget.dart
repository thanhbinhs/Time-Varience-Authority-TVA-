import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/Widgets/Routine/ListTaskWidget/MainTaskWidget.dart';
import '../TimeTableWidget/TimeTableWidget.dart';




class ListTaskWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TimeTableWidget(),
        MainTaskWidget(),
      ],
    );
  }
}