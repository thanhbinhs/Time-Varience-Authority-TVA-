import 'package:flutter/material.dart';
import '../VariablesDataRoutineClass.dart';

class MainTaskWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    return Container(
      height: variableData.screenHeight() * 0.69,
      width: variableData.screenWidth(),
      //color: Colors.green,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: variableData.screenHeight()*0.3,
                color: Colors.white,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: variableData.screenHeight() * 0.683,
                // color: Colors.blue,
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    Container(
                      //color: Colors.yellow,
                      height: 160,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: PageView(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    for(int i = 0; i < 10; i++)
                       Container(
                        height: 80,
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Container(height: 80,color: Colors.white,),

                  ],
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}