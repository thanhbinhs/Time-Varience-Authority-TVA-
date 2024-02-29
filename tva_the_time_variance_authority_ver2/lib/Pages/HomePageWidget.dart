import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tva_the_time_variance_authority_ver2/Pages/LibraryWidget.dart';
import 'ProfileWidget.dart';
import 'RoutineWidget.dart';
import 'VariablesDataClass.dart';
import 'package:flutter/services.dart';




class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    VariableData variableData = VariableData(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (currentIndex == 0) RoutineWidget(),
          if (currentIndex == 1) LibraryWidget(),
          if (currentIndex == 2) ProfileWidget(),

          Container(height: 0.5, color: Colors.grey,),


          Container(
            height: variableData.screenHeight() * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                  GestureDetector(
                  onTap: () {
                    HapticFeedback.vibrate();
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              child: Icon(
                                Icons.abc,
                                size: 30,
                              ),
                            ),
                            Container(
                              height: 15,
                              child: Text(
                                'Routine',
                                style: TextStyle(
                                  color: currentIndex == 0 ? Colors.black : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ),

                GestureDetector(
                  onTap: () {
                    HapticFeedback.vibrate();
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            child: Icon(
                              Icons.abc,
                              size: 30,
                            ),
                          ),
                          Container(
                            height: 15,
                            child: Text(
                              'Library',
                              style: TextStyle(
                                color: currentIndex == 1 ? Colors.black : Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    HapticFeedback.vibrate();
                    setState(() {
                      currentIndex = 2;
                    });
                  },

                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 90,
                      // color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            child: Icon(
                              Icons.abc,
                              size: 30,
                            ),
                          ),
                          Container(
                            height: 18,
                            width: 90,
                            //color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                    color: currentIndex == 2 ? Colors.black : Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )

                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
