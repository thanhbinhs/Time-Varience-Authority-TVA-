import 'package:flutter/material.dart';
import '../VariablesDataRoutineClass.dart';






class  DaysInWeekTableWidget extends StatefulWidget{
  @override
  State<DaysInWeekTableWidget> createState() => _DaysInWeekTableWidgetState();
}

class _DaysInWeekTableWidgetState extends State<DaysInWeekTableWidget> {
  int currentDateAsInt = int.parse(DateTime.now().day.toString());
  List<bool> isPressedDayInWeek = List.generate(31, (index) => false);
  int currentYearAsInt = int.parse(DateTime.now().year.toString());
  int currentMonthAsInt = int.parse(DateTime.now().month.toString());
  int burnIndex = 0;
  void initState() {
    super.initState();
    burnIndex = currentDateAsInt - 1;
  }


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

    return  Container(
      height: variableData.screenHeight()*0.11,
      //color: Colors.blue,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(lastDayOfMonthAsInt, (index) =>
            Padding(
              padding: EdgeInsets.all(7),
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
                  width: variableData.screenHeight()*0.05606,
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
                              height: variableData.screenHeight()*0.037375,
                              //color: Colors.blue,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (index < lastDayOfMonthAsInt) ? variableData.changeFormatDay(firstWeekday + index) : '',
                                    style: TextStyle(
                                      fontSize: 12,
                                      //fontWeight: FontWeight.bold,
                                      color: (isPressedDayInWeek[index] || burnIndex == index) ? Colors.black : Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: variableData.screenHeight()*0.012458,),
                            Container(
                              height: variableData.screenHeight()*0.037375,
                              width: variableData.screenHeight()*0.037375,
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
                                      //fontWeight: FontWeight.bold,
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
    );
  }
}