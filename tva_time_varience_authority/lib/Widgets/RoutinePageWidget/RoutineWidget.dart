import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tva_time_varience_authority/Pages/AddNewTaskPage.dart';
import 'package:tva_time_varience_authority/Widgets/RoutinePageWidget/ActionInTaskWidget/ActionInTaskWidget.dart';
import 'package:tva_time_varience_authority/Widgets/RoutinePageWidget/ListTaskWidget/ListTaskWidget.dart';
import 'package:tva_time_varience_authority/Widgets/RoutinePageWidget/TimeTableWidget/TimeTableWidget.dart';

class RoutineWidget extends StatefulWidget {
  @override
  State<RoutineWidget> createState() => _RoutineWidgetState();
}

class _RoutineWidgetState extends State<RoutineWidget> {
  @override

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; // 890.285714
    double screenWidth = MediaQuery.of(context).size.width; //411.428571
    double fontSize = screenHeight / 44.5; // 20
    PageController _pageController = PageController(initialPage: 0);
    return Container(
      color: Color(0xFFF0FFF0),
      child: Column(
        children: [
          //SizedBox(height: 10,),
          //************************************ Time Table **********************************
          TimeTableWidget(),
          //**********************************List Task*************************************
          Stack(
            children: [
              Container(
                height: screenHeight/ 1.27,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: screenHeight - screenHeight * 0.13 - 110,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          // **************************************** ActionInTask *************************************//
                          ActionInTaskWidget(),
                              //************************************ List Task Widget ****************************//
                          ListTaskWidget(),
                        ],
                      ),

                    )
                  ],
                ),
              ),

              //*************************************Icon Add New Task************************************//
              Positioned(
                left: screenWidth - 70,
                top: screenHeight - 320,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 30,
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          elevation: 5,
                          isScrollControlled: true,
                          builder: (_) => AddNewTaskPage(),
                        );
                      },
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





