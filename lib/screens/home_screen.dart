import 'package:tva_time_varience_authority/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Logout",
            style: TextStyle(color: Colors.white)),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()));
          },
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
          ),
        ),
      ),
    );
  }
}