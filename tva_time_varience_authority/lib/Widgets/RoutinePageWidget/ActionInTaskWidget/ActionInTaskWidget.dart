import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/Widgets/RoutinePageWidget/VarriableDataRoutine.dart';



class ActionInTaskWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    VariableDataRoutine variableData = VariableDataRoutine(context);
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              //color: Colors.yellow,
            ),
              height: variableData.ContainerActionInTaskHeight(),
                width: variableData.screenWidth()/1.05,
                child: PageView(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(3),
                        child: Container(
                          height: variableData.ContainerActionInTaskHeight(),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Container(
                          height: variableData.ContainerActionInTaskHeight(),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                  ],
                ),
              );
  }
}