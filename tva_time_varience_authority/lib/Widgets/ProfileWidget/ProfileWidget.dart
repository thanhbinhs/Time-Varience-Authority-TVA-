import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/Widgets/ProfileWidget/ChangeLanguageWidget.dart';
import 'package:tva_time_varience_authority/Widgets/ProfileWidget/FeedbackWidget.dart';
import 'package:tva_time_varience_authority/Widgets/ProfileWidget/SettingsWidget.dart';
import 'VariableDataClass.dart';



class ProfileWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    VariableData variableData = VariableData(context);
    double screenHeight = MediaQuery.of(context).size.height; // 890.285714
    return
      Stack(
        children: [
          Container(
            color: Color(0xFFF0FFF0),
          ),
          Container(
            //color: Colors.red,
            height: screenHeight * 0.9 ,
            child:           ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    //color: Colors.blue,
                    height: screenHeight/12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: screenHeight/45,),
                            Row(
                              children: [
                                SizedBox(width: 5,),
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenHeight / 24,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),


                //****************************Add Advertisement in here **********************
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    //color: Colors.green,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                  ),
                ),

                //*************************************FeedBack*********************************
                FeedbackWidget(),
                //*************************************Setting*********************************
                SettingsWidget(),
                //*************************************Change app language********************
                ChangeLanguageWidget(),

              ],
            ),
          ),

        ],
      );
  }
}