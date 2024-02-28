import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/Widgets/RoutinePageWidget/VarriableDataRoutine.dart';

class ListTaskWithoutTime extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    VariableDataRoutine variableData = VariableDataRoutine(context);
    double screenHeight = MediaQuery.of(context).size.height; // 890.285714
    double screenWidth = MediaQuery.of(context).size.width; //411.428571
    return Container(
      height: screenHeight / 1.83,
      //color: Colors.red,
      width: screenWidth ,
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Stack(
            children: [
              Column(
                children: [
                      Container(
                        //color:Colors.red,
                        height: variableData.ContainerTaskHeight(),
                        width: screenWidth,
                        decoration: BoxDecoration(
                          //color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: PageView(
                          //padding: EdgeInsets.all(0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              //color:Colors.red,
                              width: variableData.screenWidth() - 20,
                              height: variableData.ContainerTaskHeight(),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              //color:Colors.red,
                              height: variableData.ContainerTaskHeight(),
                              width: screenWidth/2,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                  SizedBox(height: 15,),
                  Container(
                    //color:Colors.red,
                    height: variableData.ContainerTaskHeight(),
                    width: screenWidth,
                    decoration: BoxDecoration(
                      //color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: PageView(
                      //padding: EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          //color:Colors.red,
                          width: variableData.screenWidth() - 20,
                          height: variableData.ContainerTaskHeight(),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          //color:Colors.red,
                          height: variableData.ContainerTaskHeight(),
                          width: screenWidth/2,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    //color:Colors.red,
                    height: variableData.ContainerTaskHeight(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}