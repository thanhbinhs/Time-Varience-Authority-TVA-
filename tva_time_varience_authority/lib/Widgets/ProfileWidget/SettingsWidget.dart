import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        //color: Colors.green,
        height: 180 + 70 + 1,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 5,),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Stack(
              children: [
                Container(
                  height: 140 + 70 + 1 ,
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
                        height: (170 - 30) / 2,
                        width: screenWidth - 15 * 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: (170 - 30) / 2,
                              width: (screenWidth - 15 * 2) / 2,
                              //color: Colors.red,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Icon(Icons.abc),
                                    SizedBox(width: 20,),
                                    Text(
                                      "Setting1",
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: (170 - 30) / 2,
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


                    Container(height: 1, color: Colors.grey,),


                    InkWell(
                      onTap: () {
                        print('Vùng đã được ấn vào! Feedback');
                      },
                      child: Container(
                        height: (170 - 30) / 2,
                        width: screenWidth - 15 * 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: (170 - 30) / 2,
                              width: (screenWidth - 15 * 2) / 2,
                              //color: Colors.red,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Icon(Icons.abc),
                                    SizedBox(width: 20,),
                                    Text(
                                      "Setting2",
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: (170 - 30) / 2,
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

                    Container( height: 1, color: Colors.grey,),

                    InkWell(
                      onTap: () {
                        print('Vùng đã được ấn vào! Feedback');
                      },
                      child: Container(
                        height: (170 - 30) / 2,
                        width: screenWidth - 15 * 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: (170 - 30) / 2,
                              width: (screenWidth - 15 * 2) / 2,
                              //color: Colors.red,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Icon(Icons.abc),
                                    SizedBox(width: 20,),
                                    Text(
                                      "Setting3",
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: (170 - 30) / 2,
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