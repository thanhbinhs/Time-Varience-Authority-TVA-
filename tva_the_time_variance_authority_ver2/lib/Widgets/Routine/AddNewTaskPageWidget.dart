import 'package:flutter/material.dart';

import 'VariablesDataRoutineClass.dart';

class AddNewTaskPageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: variableData.screenHeight()*0.06852,
                width: variableData.screenHeight()*0.06852,
                //color: Colors.blue,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: (){
                    showModalBottomSheet(
                      context: context,
                      elevation: 5,
                      isScrollControlled: true,
                      builder: (_) => AddNewTaskPage(),
                    );
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
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


class AddNewTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; // 890.285714
    double screenWidth = MediaQuery.of(context).size.width; //411.428571
    return Container(
      width: screenWidth,
      height: screenHeight - screenHeight*0.08098,
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
            height: screenHeight*0.06229,
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
            height: 650,
            //color: Colors.yellow,
            child: ListView(
              children: [
                Container(
                  height: 70,
                  color: Colors.yellow,
                  child: IconButton(
                    icon: Icon(Icons.abc),
                    onPressed: (){},
                  ),
                ),
                TextField(
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintText: "New Task",
                    ),
                  ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}