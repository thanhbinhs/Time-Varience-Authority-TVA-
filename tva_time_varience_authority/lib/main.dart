import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/Pages/HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
        title: "Food App",
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