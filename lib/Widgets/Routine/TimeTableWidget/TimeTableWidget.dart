import 'package:flutter/material.dart';
import '../VariablesDataRoutineClass.dart';
import 'package:intl/intl.dart';

class TimeTableWidget extends StatefulWidget{
  @override
  State<TimeTableWidget> createState() => _TimeTableWidgetState();
}

class _TimeTableWidgetState extends State<TimeTableWidget> {


  int currentDateAsInt =  int.parse(DateTime.now().day.toString());

  List<bool> isPressedDayInWeek = List.generate(31, (index) => false);
  int currentYearAsInt = int.parse(DateTime.now().year.toString());
  int currentMonthAsInt = int.parse(DateTime.now().month.toString());
  int dayIsPressed = int.parse(DateTime.now().day.toString());
  int burnIndex = 0;

  int _scrollPosition = 0;
  double screenHeight() {
    return MediaQuery.of(context).size.height;
  }
    void initState() {
      super.initState();
    burnIndex = currentDateAsInt - 1;
    Future.delayed(Duration.zero, () {
      _scrollPosition = burnIndex * (screenHeight()*0.05606 + 7 * 2 ).toInt();
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context){


    VariableData variableData = VariableData(context);
    DateTime now = DateTime.now();
    String formattedDateMonth = DateFormat('MMM').format(now);
    DateTime firstDayOfMonth = DateTime(now.year, now.month, 1);
    // giá trị trả từ 1 đến 7 tương ứng với 1 là thứ 2 và 7 là chủ nhật
    int firstWeekday = firstDayOfMonth.weekday;
    // Lấy thời gian ngày cuối cùng của tháng
    DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    int lastDayOfMonthAsInt = lastDayOfMonth.day;




    ScrollController _controller = ScrollController(initialScrollOffset:  (currentDateAsInt - 1) * (variableData.screenHeight()*0.05606 + 7 * 2 ));
    void _scrollToContainer(int index) {
      double offset = (index - 1) * (variableData.screenHeight()*0.05606 + 7 * 2 );
      _controller.animateTo(
        offset,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }


    return Container(
      height: variableData.screenHeight()*0.197,
      color: variableData.colorBackGround,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //********************** MonthsInYearTableWWidget *****************//
          Container(
            height: variableData.screenHeight()*0.044,
            //color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: variableData.screenHeight()*0.12458,
                  //color: Colors.orange,
                ),
                Text(

                  dayIsPressed == currentDateAsInt ?
                  'Today' : ((dayIsPressed - currentDateAsInt) == 1 ?
                  'Tomorrow' : ((currentDateAsInt - dayIsPressed) == 1 ? 'Yesterday' : '$formattedDateMonth ${dayIsPressed}, ${currentYearAsInt}')),
                  //'$_scrollPosition',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Container(
                  width: variableData.screenHeight()*0.12458,
                  //color: Colors.orange,
                ),
              ],
            ),
          ),
          //********************** DaysInWeekTableWidget ***********************//
          Container(
            height: variableData.screenHeight()*0.11,
            // color: Colors.blue,
              child: ListView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: List.generate(lastDayOfMonthAsInt, (index) =>
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        height: variableData.screenHeight()*0.11,
                        width: 50,
                        // color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height:  variableData.screenHeight()*0.01245,
                              width:  variableData.screenHeight()*0.0622,
                              // color: Colors.orange,
                              child: isPressedDayInWeek[index] || burnIndex == index ? Center(
                                child: CustomPaint(
                                  size: Size(variableData.screenHeight()*0.01245, variableData.screenHeight()*0.01245),
                                  painter: TrianglePainter(),
                                ),
                              ) : null,
                            ),


                            InkWell(
                              onTap: (){
                                setState(() {
                                  isPressedDayInWeek = List.generate(31, (index) => false);
                                  isPressedDayInWeek[index] = true;
                                  dayIsPressed = index + 1;
                                  burnIndex = index;
                                  // print(dayIsPressed);
                                  // print(currentDateAsInt);
                                });
                              },
                              child: Container(
                                height: variableData.screenHeight()*0.0909,
                                width: variableData.screenHeight()*0.056,
                                decoration: BoxDecoration(
                                  color:   currentDateAsInt == index + 1 ? (variableData.colorCurDay) : (isPressedDayInWeek[index] || burnIndex == index ? variableData.colorIsPressed : variableData.colorBackGround),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: variableData.screenHeight()*0.0436,
                                      // color: Colors.white,
                                      child: Center(
                                        child: Text(
                                          (index < lastDayOfMonthAsInt) ? variableData.changeFormatDay(firstWeekday + index) : '',
                                          style: TextStyle(
                                            fontSize: 12,
                                            // fontWeight: FontWeight.bold,
                                            color: (isPressedDayInWeek[index] || burnIndex == index || currentDateAsInt == index + 1) ? Colors.black : Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: variableData.screenHeight()*0.03737,
                                      width: variableData.screenHeight()*0.03737,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (isPressedDayInWeek[index] || burnIndex == index) ? Colors.white : variableData.colorBackGround,
                                        border: Border.all(
                                          width: 0.1,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          (index + 1 <= lastDayOfMonthAsInt) ? ('${index + 1}') : '',
                                          style: TextStyle(
                                            color:(isPressedDayInWeek[index] || burnIndex == index || currentDateAsInt == index + 1) ? Colors.black : Colors.grey,
                                            fontSize: 12,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color.fromARGB(255,128,50,128)
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    final Path path = Path();
    path.moveTo(0.0, 0.0); // Điểm đầu
    path.lineTo(size.width, 0.0); // Điểm dưới bên phải
    path.lineTo(size.width/2, size.height/1.4); // Điểm dưới bên trái
    path.close(); // Kết thúc hình tam giác

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


