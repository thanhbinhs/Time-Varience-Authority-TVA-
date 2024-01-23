import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/Pages/AddNewTaskPage.dart';

class RoutineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xFFF0FFF0),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "Today",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: screenHeight * 0.13,
                color: Color(0xFFF0FFF0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                            EdgeInsets.all(2),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int i = 0; i< 7; i++)
                                  Container(
                                    width: 50,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(30),
                                    ),

                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Mo",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //**********************************List Task*************************************
          Stack(
            children: [
              Container(
                height: 700,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
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
                    SizedBox(height: 10,),
                    Container(
                      height: screenHeight - 10 - screenHeight * 0.13 - 100,
                      width: screenWidth - 20 ,
                      decoration: BoxDecoration(
                        //color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(6),
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),

                          for(int i = 0; i < 10; i++)
                          Padding(
                            padding: EdgeInsets.all(6),
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 185, 211, 238),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
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
                  height: 60,
                  width: 60,
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
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AddNewTaskPage();
                        },
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
