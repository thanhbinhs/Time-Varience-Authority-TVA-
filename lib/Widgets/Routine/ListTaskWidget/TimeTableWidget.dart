import 'package:flutter/material.dart';
import '../VariablesDataRoutineClass.dart';

class TimeTableWidget extends StatefulWidget{
  @override
  State<TimeTableWidget> createState() => _TimeTableWidgetState();
}

class _TimeTableWidgetState extends State<TimeTableWidget> {
  int currentYearAsInt = int.parse(DateTime.now().year.toString());
  int currentMonthAsInt = int.parse(DateTime.now().month.toString());
  int currentDateAsInt = int.parse(DateTime.now().day.toString());
  List<bool> isPressedDayInWeek = List.generate(31, (index) => false);
  void initState() {
    super.initState();
    burnIndex = currentDateAsInt - 1;
  }
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
  int burnIndex = 0;
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    DateTime now = DateTime.now();
    DateTime firstDayOfMonth = DateTime(now.year, now.month, 1);
    // giá trị trả từ 1 đến 7 tương ứng với 1 là thứ 2 và 7 là chủ nhật
    int firstWeekday = firstDayOfMonth.weekday;
    // Lấy thời gian ngày cuối cùng của tháng
    DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    int lastDayOfMonthAsInt = lastDayOfMonth.day;
    return Container(
      height: variableData.screenHeight()*0.197,
      //color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: variableData.screenHeight()*0.044,
            //color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  width: 100,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: (){
                          //**********************************************
                        },
                        child: Container(
                            height: 25,
                            width: 65,
                            //color: Colors.orange,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Today'),
                              ],
                            )
                        ),
                      ),

                      Container(
                        height: 25,
                        width: 10,
                        color: Colors.orange,
                      ),
                    ],
                  )
                ),




                Text(
                  '$currentMonthAsInt $currentDateAsInt,${currentYearAsInt}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Container(
                  width: 100,
                  //color: Colors.orange,
                ),

              ],
            ),
          ),

          Container(
            height: variableData.screenHeight()*0.115,
            //color: Colors.blue,
            child: ListView(
              scrollDirection: Axis.horizontal,
                children: List.generate(lastDayOfMonthAsInt, (index) => 
                    Padding(
                        padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isPressedDayInWeek = List.generate(31, (index) => false);
                            isPressedDayInWeek[index] = true;
                            burnIndex = index;
                            //print(burnIndex);
                          });
                        },
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: (isPressedDayInWeek[index] || burnIndex == index) ? Colors.orange : Color(0xFFF0FFF0),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Container(
                                      height: 30,
                                      //color: Colors.blue,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              (index < lastDayOfMonthAsInt) ? changeFormatDay(firstWeekday + index) : '',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: (isPressedDayInWeek[index] || burnIndex == index) ? Colors.black : Colors.grey,
                                              ),
                                            ),
                                          ],
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (isPressedDayInWeek[index] || burnIndex == index) ? Colors.white : Color(0xFFF0FFF0),
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 0.1,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            (index + 1 <= lastDayOfMonthAsInt) ? ('${index + 1}') : '',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color:(isPressedDayInWeek[index] || burnIndex == index) ? Colors.black : Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}