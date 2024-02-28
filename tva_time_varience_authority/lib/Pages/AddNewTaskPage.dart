import 'package:flutter/material.dart';


class AddNewTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; // 890.285714
    double screenWidth = MediaQuery.of(context).size.width; //411.428571
    return Container(
      width: screenWidth,
      height: screenHeight - 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        //color: Colors.orange,
      ),
      padding: EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                ),
                TextButton(
                  onPressed: (){

                  },
                  child: Text(
                    "Create",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 70,
            color: Colors.yellow,
            child: IconButton(
              icon: Icon(Icons.abc),
              onPressed: (){},
            ),
          ),
          Container(
            height: 70,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
