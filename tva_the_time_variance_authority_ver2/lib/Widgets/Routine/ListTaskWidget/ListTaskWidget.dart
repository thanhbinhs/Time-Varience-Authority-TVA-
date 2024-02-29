import 'package:flutter/material.dart';
import 'package:tva_the_time_variance_authority_ver2/Widgets/Routine/ListTaskWidget/MainTaskWidget.dart';
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