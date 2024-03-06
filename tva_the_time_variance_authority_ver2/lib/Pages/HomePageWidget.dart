import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
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
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (currentIndex == 0) RoutineWidget(),
              if (currentIndex == 1) LibraryWidget(),
              if (currentIndex == 2) ProfileWidget(),
              // Container(height: 0.5, color: Colors.grey,),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Padding(padding: EdgeInsets.all(10),
                child: Container(
                  height: variableData.screenHeight() * 0.09,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(150, 0, 0, 0),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      GestureDetector(
                        onTap: () {
                          HapticFeedback.vibrate();
                          setState(() {
                            currentIndex = 0;
                            //print(variableData.screenHeight() * 0.087209);
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            // color: Colors.yellow,
                            height: 50,
                            width: variableData.screenHeight() * 0.087209,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  // height: variableData.screenHeight() * 0.06229,
                                    height: 35,
                                    // color: Colors.green,
                                    child: Opacity(
                                      opacity: currentIndex == 0 ? 1 : 0.5,
                                      child: RiveAnimation.asset(
                                        'assets/RiveAssets/Icons.riv',
                                        artboard: "TIMER",
                                      ),
                                    ),
                                ),
                                Container(
                                  // color: Colors.green,
                                  height: variableData.screenHeight() * 0.018,
                                  child: Text(
                                    'Routine',
                                    style: TextStyle(
                                      color: currentIndex == 0 ? Colors.white : Colors.grey,
                                      fontSize: 12,
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
                            //print(variableData.screenHeight() * 0.087209);
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            // color: Colors.yellow,
                            height: 50,
                            width: variableData.screenHeight() * 0.087209,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  // height: variableData.screenHeight() * 0.06229,
                                  height: 35,
                                  // color: Colors.green,
                                  child: Opacity(
                                    opacity: currentIndex == 1 ? 1 : 0.5,
                                    child: RiveAnimation.asset(
                                      'assets/RiveAssets/Icons.riv',
                                      artboard: "SEARCH",
                                    ),
                                  ),
                                ),
                                Container(
                                  // color: Colors.green,
                                  height: variableData.screenHeight() * 0.018,
                                  child: Text(
                                    'Library',
                                    style: TextStyle(
                                      color: currentIndex == 1 ? Colors.white : Colors.grey,
                                      fontSize: 12,
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
                            //print(variableData.screenHeight() * 0.087209);
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            // color: Colors.yellow,
                            height: 50,
                            width: variableData.screenHeight() * 0.087209,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  // height: variableData.screenHeight() * 0.06229,
                                  height: 35,
                                  // color: Colors.green,
                                  child: Opacity(
                                    opacity: currentIndex == 2 ? 1 : 0.5,
                                    child: RiveAnimation.asset(
                                      'assets/RiveAssets/Icons.riv',
                                      artboard: "USER",
                                    ),
                                  ),
                                ),
                                Container(
                                  // color: Colors.green,
                                  height: variableData.screenHeight() * 0.018,
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                      color: currentIndex == 2 ? Colors.white : Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}
