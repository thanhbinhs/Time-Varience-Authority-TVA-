import 'package:flutter/material.dart';
import 'package:tva_the_time_variance_authority_ver2/src/action_pane_motions.dart';
import 'package:tva_the_time_variance_authority_ver2/src/actions.dart';
import 'package:tva_the_time_variance_authority_ver2/src/slidable.dart';
import '../VariablesDataRoutineClass.dart';

class MainTaskWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    return Container(
      height: variableData.screenHeight() * 0.803,
      width: variableData.screenWidth(),
      color: variableData.colorBackGround,
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
                height: variableData.screenHeight() * 0.8,
                // color: Colors.blue,
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    Container(
                      // color: Colors.yellow,
                      height: variableData.screenHeight() * 0.19933,
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
                        height: variableData.screenHeight() * 0.11,
                         // color: Colors.black,
                          child: Slidable(
                              key: const ValueKey(0),
                              endActionPane: const ActionPane(
                                motion: DrawerMotion(),
                                children: [
                                  SlidableAction(
                                    onPressed: doNothing,
                                    backgroundColor: Color.fromARGB(100, 100, 100, 100),
                                    foregroundColor: Colors.white,
                                    icon: Icons.copy,
                                  ),
                                  SlidableAction(
                                    onPressed: doNothing,
                                    backgroundColor: Color.fromARGB(150, 255, 0, 0),
                                    foregroundColor: Colors.white,
                                    icon: Icons.abc,
                                  ),

                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                child: Container(
                                  height: 80,
                                  width: variableData.screenWidth(),
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 260,
                                        // color: Colors.green,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 70,
                                              //color: Colors.blue,
                                              child: Center(
                                                child: Icon(Icons.abc),
                                              ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(vertical: 10),
                                                child: Container(
                                                  width: 190,
                                                  // color: Colors.green,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 20,
                                                        // color: Colors.blue,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                                Text(
                                                                  'Time: ',
                                                                  style: TextStyle(
                                                                    fontSize: 12,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'All-Day',
                                                                  style: TextStyle(
                                                                    fontSize: 12,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                      ),
                                                      Container(
                                                        height: 32,
                                                        color: Colors.green,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 50,
                                        // color: Colors.black,
                                        child: Center(
                                          child: Icon(Icons.abc),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                      ),
                    Container(height: variableData.screenHeight() * 0.099667,color: Colors.white,),
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

void doNothing(BuildContext context) {
  print('1---------');


}


