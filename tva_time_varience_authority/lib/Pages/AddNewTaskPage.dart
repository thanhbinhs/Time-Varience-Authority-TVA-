import 'package:flutter/material.dart';


class AddNewTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.only(bottom: 0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: screenWidth,
          height: screenHeight * 0.7,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Text('Cửa sổ đè lên'),
              Text('Nội dung của cửa sổ đè lên'),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Đóng'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

