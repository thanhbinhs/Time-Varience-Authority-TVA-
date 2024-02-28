import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/Widgets/RoutinePageWidget/ListTaskWidget/ListTaskWithTime.dart';
import 'package:tva_time_varience_authority/Widgets/RoutinePageWidget/ListTaskWidget/ListTaskWithoutTime.dart';



class ListTaskWidget extends StatefulWidget {
  @override
  _ListTaskWidgetState createState() => _ListTaskWidgetState();
}

class _ListTaskWidgetState extends State<ListTaskWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; // 890.285714
    double screenWidth = MediaQuery.of(context).size.width; //411.428571
    return Container(
      height: screenHeight / 1.83,
      //color: Colors.red,
      width: screenWidth ,
      child: Column(
        children: [
          Container(
            height: screenHeight / 1.95,
            //color: Colors.red,
            width: screenWidth ,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                ListTaskWithoutTime(),
                ListTaskWithTime(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



