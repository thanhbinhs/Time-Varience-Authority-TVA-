import 'package:flutter/material.dart';
import '../VariablesDataRoutineClass.dart';



class MonthsInYearTableWWidget extends StatefulWidget{
  @override
  State<MonthsInYearTableWWidget> createState() => _MonthsInYearTableWWidgetState();
}

class _MonthsInYearTableWWidgetState extends State<MonthsInYearTableWWidget> {

  int currentYearAsInt = int.parse(DateTime.now().year.toString());
  int currentMonthAsInt = int.parse(DateTime.now().month.toString());
  int currentDateAsInt = int.parse(DateTime.now().day.toString());
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    return Container(
      height: variableData.screenHeight()*0.044,
      //color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: variableData.screenHeight()*0.124584,
              child: Stack(
                children: [
                  InkWell(
                    onTap: (){
                      //**********************************************
                      setState(() {

                      });
                    },
                    child: Container(
                        height: variableData.screenHeight()*0.031146,
                        width: variableData.screenHeight()*0.08098,
                        //color: Colors.orange,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Today'),
                          ],
                        )
                    ),
                  ),
                  Container(
                    height: variableData.screenHeight()*0.031146,
                    width: variableData.screenHeight()*0.012458,
                    color: Colors.orange,
                  ),
                ],
              )
          ),
          Text(
            '${currentMonthAsInt} ${currentDateAsInt},${currentYearAsInt}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Container(
            width: variableData.screenHeight()*0.12458,
            //color: Colors.orange,
          ),
        ],
      ),
    );

  }
}