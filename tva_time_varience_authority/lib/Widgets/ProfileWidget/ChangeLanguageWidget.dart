import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/Widgets/ProfileWidget/VariableDataClass.dart';

class ChangeLanguageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    double screenWidth = MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        //color: Colors.green,
        height: variableData.ContainerHeight1() / 2,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 5,),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: variableData.ContainerHeight1() / 2,
                  //color: Colors.blue,
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
                        //color: Colors.red,
                        height: variableData.ContainerHeight1() / 2,
                        width: screenWidth - 15 * 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: variableData.ContainerHeight1() / 2,
                              width: (screenWidth - 15 * 2) / 1.26,
                              //color: Colors.red,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Icon(Icons.abc),
                                    SizedBox(width: 20,),
                                    Text(
                                      "Change app language",
                                      style: TextStyle(
                                        fontSize: variableData.titleFontSize(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: variableData.ContainerHeight1() / 2,
                              width: (screenWidth - 15 * 2) / 5,
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