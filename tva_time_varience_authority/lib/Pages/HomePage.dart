import 'package:flutter/material.dart';

import '../Widgets/ProfileWidget/ProfileWidget.dart';
import '../Widgets/RoutinePageWidget/RoutineWidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isPressedRoutine = true;
  bool isPressedPage2 = false;
  bool isPressedProfile = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // Your main content here
          Positioned.fill(
            child: Container(
              color: Colors.white, // Example background color
              child: Center(
                child: isPressedRoutine
                    ? RoutineWidget()
                    : isPressedPage2
                    ? ProfileWidget()
                    : Text('Default Content'),
              ),
            ),
          ),

          // Navigation bar at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight*0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressedRoutine = true;
                        isPressedPage2 = false;
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            isPressedRoutine ? 'Data/Images/Routine2.png' : 'Data/Images/Routine1.png',
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            "Routine",
                            style: TextStyle(
                              color: isPressedRoutine ? Colors.black : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  // GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       isPressedRoutine = false;
                  //       isPressedPage2 = true;
                  //     });
                  //   },
                  //   child: Container(
                  //     width: 80,
                  //     height: 80,
                  //     decoration: BoxDecoration(
                  //       //color: Colors.blue,
                  //     ),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Image.asset(
                  //           'Data/Images/Routine1.png',
                  //           width: 40,
                  //           height: 40,
                  //         ),
                  //         Text(
                  //           "Discover",
                  //           style: TextStyle(
                  //             color: isPressedPage2 ? Colors.black : Colors.grey,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //
                  // ),




                  // GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       isPressedRoutine = false;
                  //       isPressedPage2 = true;
                  //     });
                  //   },
                  //   child: Container(
                  //     width: 80,
                  //     height: 80,
                  //     decoration: BoxDecoration(
                  //       //color: Colors.blue,
                  //     ),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Image.asset(
                  //           'Data/Images/Routine1.png',
                  //           width: 40,
                  //           height: 40,
                  //         ),
                  //         Text(
                  //           "Discover",
                  //           style: TextStyle(
                  //             color: isPressedPage2 ? Colors.black : Colors.grey,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),


                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressedRoutine = false;
                        isPressedPage2 = true;
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            isPressedPage2 ? 'Data/Images/Profile2.png' : 'Data/Images/Profile1.png',
                            width: 35,
                            height: 35,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: isPressedPage2 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
