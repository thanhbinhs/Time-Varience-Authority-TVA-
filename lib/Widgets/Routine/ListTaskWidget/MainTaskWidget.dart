import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/src/action_pane_motions.dart';
import 'package:tva_time_varience_authority/src/actions.dart';
import 'package:tva_time_varience_authority/src/slidable.dart';
import '../VariablesDataRoutineClass.dart';

class MainTaskWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    return Container(
      height: variableData.screenHeight() * 0.69,
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
                height: variableData.screenHeight() * 0.683,
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

                    // for(int i = 0; i < 10; i++)
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



// PageView(
// scrollDirection: Axis.horizontal,
// children: [
// Padding(
// padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
// child: Container(
// height: variableData.screenHeight() * 0.099667,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: Colors.blue,
// ),
// ),
// ),
//
// Padding(
// padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
// child: Container(
// height: variableData.screenHeight() * 0.099667,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: Colors.blue,
// ),
// ),
// ),
// ],
// ),