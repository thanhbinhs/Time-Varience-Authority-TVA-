import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

// ham ve duong line do
class LinePainter extends CustomPainter {
  final double? YPosIn;
  LinePainter({required this.YPosIn});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2.0;
    double yPos = (YPosIn ?? 0).toDouble();
    //print(yPos);
    canvas.drawLine(Offset(35, yPos), Offset(size.width , yPos), paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}


class ListTaskWithTime extends StatefulWidget{
  @override
  State<ListTaskWithTime> createState() => _ListTaskWithTimeState();
}

class _ListTaskWithTimeState extends State<ListTaskWithTime> {
  String currentTime1 = '';
  double? currentSecond = 0;
  double? currentMinute = 0;
  double? currentPosInLinePainterMi = 0;
  double? currentPosInLinePainterHr = 0;
  int countTouches = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Gọi hàm để cập nhật thời gian khi widget được tạo
    updateCurrentTime();
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  LinePainter _buildLinePainter(countTouches) {
    return LinePainter(
      YPosIn: (countTouches % 2 == 0) ? currentPosInLinePainterMi : currentPosInLinePainterHr,
    );
  }

  void updateCurrentTime() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        DateTime now = DateTime.now();
        currentSecond = now.second + (now.minute * 60) + (now.hour * 3600);
        if (currentSecond != null) {
          currentPosInLinePainterMi = (currentSecond! / 6) - 1.5;
          currentPosInLinePainterHr = (currentSecond! / (180/19)) - 1.5  ;
        }
      });
    });
  }




  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411.428571
    return Stack(
      children: [
            Container(
            // color: Colors.red,
            width: screenWidth ,
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Stack(
                  children: [
                    Container(
                      //color: Colors.red,
                      width: screenWidth ,
                      child: CustomPaint(
                        painter: _buildLinePainter(countTouches),
                      ),
                    ),
                    ((countTouches % 2) == 0) ? TimeBarMinutes() : TimeBarHours(),
                  ],
                ),
              ],
            ),
          ),
        Container(height: 10,width: 45,color: Colors.white,),
        Row(
          children: [
            SizedBox(width: 5,),
            Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: (){
                  countTouches ++;
                  //print(countTouches);
                },
                child: Text(
                  ((countTouches % 2) == 0) ? 'Mi' : 'Hr',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TimeBarHours extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //double screenWidth = MediaQuery.of(context).size.width; //411.428571
    return Column(
      children: [
        for (int i = 1; i < 25; i++)
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 380,
              width: 35,
              //color: Colors.red,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      for(int i = 1; i < 5; i++ )
                      Container(
                        height: 95,
                        // color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                    i == 4 ? '' :  '${i*15}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(height: 2,width: 20,color: Colors.grey,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            i < 10 ? "0$i" : (i == 24 ? "00" : "$i"),
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 2,
                            width: 25,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}


class TimeBarMinutes extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //double screenWidth = MediaQuery.of(context).size.width; //411.428571
    return Column(
      children: [
        for (int i = 1; i < 25; i++)
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 600,
              width: 35,
              // color: Colors.yellow,
              child:
                  Stack(
                    children: [
                      Container(
                        height: 600,
                        width: 35,
                        //color: Colors.red,
                        child: Column(
                          children: [
                            for (int i = 1; i < 13; i++)
                            Container(
                              height: 50,
                              //color: Colors.blue,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        i == 12 ? "" : (i == 1 ? "05" :"${i*5}"),
                                        style:  TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: 15,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 600,
                        width: 35,
                        //color: Colors.orange,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  i < 10 ? "0$i" : (i == 24 ? "00" : "$i"),
                                  style:  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 2,
                                  width: 25,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
            ),
          ),
      ],
    );
  }
}