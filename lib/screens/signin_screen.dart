import 'package:flutter/material.dart';
import 'package:tva_time_varience_authority/utils/color_utils.dart';
import 'package:tva_time_varience_authority/reusable_widgets/reusable_widget.dart';
import 'package:tva_time_varience_authority/screens/signup_screen.dart';
import 'package:tva_time_varience_authority/screens/home_screen.dart';
import 'package:tva_time_varience_authority/Pages/HomePageWidget.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}): super(key :key);
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")],
              begin: Alignment.topCenter, end: Alignment.bottomCenter
            ),),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height*0.1, 20,0),
              child: Column(
                children: <Widget>[
                  logoWidget("assets/images/logo1.png"),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField(
                      "Enter Username", Icons.person_outline , false, _emailTextController),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField(
                      'Enter Password', Icons.lock_outline, true, _passwordTextController),
                  SizedBox(
                    height: 20,
                  ),
                  signInSignUpButton(context, true, (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }),
                  signUpOption(),
                ],
              ),
            ),
          ),
        ),
      );
    }
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}