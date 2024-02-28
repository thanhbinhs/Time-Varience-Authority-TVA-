import 'package:flutter/material.dart';
import '../Widgets/LibraryWidget/LibraryWidget.dart';
import '../Widgets/ProfileWidget/ProfileWidget.dart';
import '../Widgets/RoutinePageWidget/RoutineWidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isPressedRoutine = true;
  bool isPressedLibrary = false;
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
                    : isPressedProfile
                    ? ProfileWidget()
                    : isPressedLibrary
                    ? LibraryWidget()
                    : Container(),
              ),
            ),
          ),

          // Navigation bar at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.09,
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
                        isPressedLibrary = false;
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


                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressedLibrary = true;
                        isPressedRoutine = false;
                        isPressedProfile = false;
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
                          SizedBox(height: 5,),
                          Image.asset(
                            'Data/Images/Library.png',
                            width: 39,
                            height: 39,
                          ),
                          Text(
                            "Library",
                            style: TextStyle(
                              color: isPressedLibrary ? Colors.black : Colors.grey,
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
                  // ),


                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressedProfile = true;
                        isPressedRoutine = false;
                        isPressedLibrary = false;
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
                            isPressedProfile ? 'Data/Images/Profile2.png' : 'Data/Images/Profile1.png',
                            width: 35,
                            height: 35,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: isPressedProfile ? Colors.black : Colors.grey,
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
