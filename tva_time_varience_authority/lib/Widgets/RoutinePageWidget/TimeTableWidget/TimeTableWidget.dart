import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeTableWidget extends StatefulWidget {
  @override
  State<TimeTableWidget> createState() => _TimeTableWidgetState();
}

class _TimeTableWidgetState extends State<TimeTableWidget> {

  List<List<bool>> isPressedDayInWeek = List.generate(5, (index) => List.generate(7, (index) => false));
  int burnIndex = 0;

  String changeFormatDay(int dayNumber) {
    if(dayNumber > 7){
      dayNumber = dayNumber % 7;
      if(dayNumber == 0) {
        dayNumber = 7;
      }
    }
    String formattedDay = '';
    switch (dayNumber) {
      case 1:
        formattedDay = 'Mo';
        break;
      case 2:
        formattedDay = 'Tu';
        break;
      case 3:
        formattedDay = 'We';
        break;
      case 4:
        formattedDay = 'Th';
        break;
      case 5:
        formattedDay = 'Fr';
        break;
      case 6:
        formattedDay = 'Sa';
        break;
      case 7:
        formattedDay = 'Su';
        break;
    }
    return formattedDay;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    DateTime now = DateTime.now();

    DateTime firstDayOfMonth = DateTime(now.year, now.month, 1);

    // giá trị trả từ 1 đến 7 tương ứng với 1 là thứ 2 và 7 là chủ nhật
    int firstWeekday = firstDayOfMonth.weekday;

    // Lấy thời gian ngày cuối cùng của tháng
    DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    int lastDayOfMonthAsInt = lastDayOfMonth.day;


    return Container(
      height: screenHeight * 0.18,
      //color: Color(0xFFF0FFF0),
      //color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 30,
            //color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                  Text(
                    'Today',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                  ),
                
                ],
              ),
          ),
          Container(
            height: 80,
            // color: Colors.blue,
            width: screenWidth,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                //color: Colors.orange,
                child: ListWheelScrollView(
                  itemExtent: 50 ,
                  //scrollDirection: Axis.horizontal,
                  useMagnifier: true,
                  children: List.generate(5, (index) => Container(
                      width: 50,
                    color: Colors.orange,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),


      // child: PageView(
      //   children: List.generate(
      //         5,
      //         (indexI) => Container(
      //           //color: Colors.green,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: List.generate(
      //                 7,
      //                     (indexJ) => Padding(
      //                         padding: EdgeInsets.all(3.2),
      //                       child: Container(
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                           children: [
      //                             InkWell(
      //                             onTap: () {
      //                               setState(() {
      //                                 isPressedDayInWeek = List.generate(5, (index) => List.generate(7, (index) => false));
      //                                 isPressedDayInWeek[indexI][indexJ] = true;
      //                                 burnIndex = -1;
      //                                 //print(firstWeekday);
      //
      //                                 });
      //                               },
      //                               child: Container(
      //                                 width: 45,
      //                                 height: 70,
      //                                 decoration: BoxDecoration(
      //                                   borderRadius: BorderRadius.circular(30),
      //                                   color: (isPressedDayInWeek[indexI][indexJ] || burnIndex == indexI * 7 + indexJ) ? Colors.orange : Colors.white,
      //                                 ),
      //                                 child: Column(
      //                                   children: [
      //                                     SizedBox(height: screenHeight / 127,),
      //                                     // cac thứ
      //                                     Text(
      //                                         (indexI * 7 + indexJ + 1 <= lastDayOfMonthAsInt) ? changeFormatDay(firstWeekday + indexI * 7 + indexJ) : '',
      //                                       style: TextStyle(
      //                                         color: Colors.grey,
      //                                       ),
      //                                     ),
      //                                     SizedBox(height: 5,),
      //                                     Container(
      //                                       height: 30,
      //                                       width: 30,
      //                                       decoration: BoxDecoration(
      //                                         shape: BoxShape.circle,
      //                                         color: Colors.white,
      //                                         border: Border.all(
      //                                           color: Colors.grey,
      //                                           width: 0.1,
      //                                         ),
      //                                       ),
      //                                       child: Column(
      //                                         mainAxisAlignment: MainAxisAlignment.center,
      //                                         children: [
      //                                           // các ngày
      //                                           Text(
      //                                             (indexI * 7 + indexJ + 1 <= lastDayOfMonthAsInt) ? ('${indexI * 7 + indexJ + 1}') : '',
      //                                             style: TextStyle(
      //                                               fontWeight: FontWeight.bold,
      //                                               color: Colors.grey,
      //                                             ),
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),



      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //               ),
      //           ),
      //         ),
      //   ),
      // ),
    );
  }
}






