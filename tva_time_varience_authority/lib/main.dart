import 'package:flutter/material.dart';
import 'Pages/HomePageWidget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/" : (context) => HomePage(),
      },
    );
  }
}