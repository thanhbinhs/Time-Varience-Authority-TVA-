import 'package:flutter/material.dart';
import 'VariableDataClass.dart';

class FeedbackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    double screenWidth = variableData.screenWidth();
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        //color: Colors.green,
        height: variableData.ContainerHeight0(),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 5,),
                Text(
                  "Feedback",
                  style: TextStyle(
                    fontSize: variableData.titleFontSize(),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Stack(
              children: [
                Container(
                  height: variableData.ContainerHeight1(),
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        print('Vùng đã được ấn vào Help Center!');
                      },
                      child: Container(
                        height: variableData.ContainerHeight1()/2,
                        width: screenWidth - 15 * 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: variableData.ContainerHeight1()/2,
                              width: (screenWidth - 15 * 2) / 1.46,
                              //color: Colors.red,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Icon(Icons.abc),
                                    SizedBox(width: 20,),
                                    Text(
                                      "Help Center",
                                      style: TextStyle(
                                        fontSize: variableData.titleFontSize(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: variableData.ContainerHeight1()/2,
                              width: (screenWidth - 15 * 2) / (3.25),
                              //color: Colors.yellow,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.abc),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 1, color: Colors.grey,),
                    InkWell(
                      onTap: () {
                        print('Vùng đã được ấn vào! Feedback');
                      },
                      child: Container(
                        height: variableData.ContainerHeight1()/2,
                        width: screenWidth - 15 * 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: variableData.ContainerHeight1()/2,
                              width: (screenWidth - 15 * 2) / 2,
                              //color: Colors.red,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Icon(Icons.abc),
                                    SizedBox(width: 20,),
                                    Text(
                                      "Feedback",
                                      style: TextStyle(
                                        fontSize: variableData.titleFontSize(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: variableData.ContainerHeight1()/2,
                              width: (screenWidth - 15 * 2) / 2,
                              //color: Colors.yellow,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.abc),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
