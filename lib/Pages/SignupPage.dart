//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:tva_time_varience_authority/Pages/LoginPage.dart';
// import 'package:get/get.dart';
// import 'package:tva_time_varience_authority/repository/authentication/authentication.dart';
//
// class SignupPage extends StatelessWidget {
//   const SignupPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(30),
//             child: Column(
//
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SignupHeaderWidget(size: size),
//                 const SignupForm(),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const Text("OR"),
//                     SizedBox(
//                       width: double.infinity,
//                       child: OutlinedButton.icon(
//                         icon: Image(
//                           image: AssetImage("assets/images/google.jpg"),
//                           width: 20.0,
//                         ),
//                         onPressed: () {},
//                         label: Text("SIGN IN WITH GOOGLE"),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
//                       },
//                       child: const Text.rich(
//                         TextSpan(
//                           text: ("Already have an Account? "),
//                           children: const [
//                             TextSpan(
//                               text: "Signin",
//                               style: TextStyle(color: Colors.blue),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class SignupHeaderWidget extends StatelessWidget {
//   const SignupHeaderWidget({
//     super.key,
//     required this.size,
//   });
//
//   final Size size;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image(
//           image: AssetImage("assets/images/welcome.png"),
//           height: size.height * 0.2,
//         ),
//         Text(
//           "Get On Board",
//           style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           "Time Manager",
//           style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
//         ),
//       ],
//     );
//   }
// }
//
// class SignupForm extends StatelessWidget {
//
//   const SignupForm({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(SignUpController());
//     final _formKey = GlobalKey<FormState>();
//     return Form(
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextFormField(
//               controller: controller.fullName,
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Icons.person_outline_outlined),
//                 labelText: "Full Name",
//                 hintText: "Type Full Name",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextFormField(
//               controller: controller.email,
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Icons.mail_outline),
//                 labelText: "Email",
//                 hintText: "Type Email",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextFormField(
//               controller: controller.phoneNo,
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Icons.phone_outlined),
//                 labelText: "Phone Number",
//                 hintText: "Type Phone No",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextFormField(
//               controller: controller.password,
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Icons.fingerprint),
//                 labelText: "Password",
//                 hintText: "Type Password",
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                   onPressed: null,
//                   icon: Icon(Icons.remove_red_eye_sharp),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             SizedBox(
//               width: double.infinity,
//               height: 40,
//               child: ElevatedButton(
//                 onPressed: () {
//                   if(_formKey.currentState!.validate()){
//                     SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
//                   }
//                 },
//                 child: Text("SIGNUP"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SignUpController extends GetxController{
//   static SignUpController get instance => Get.find();
//
//   final email = TextEditingController();
//   final password = TextEditingController();
//   final fullName = TextEditingController();
//   final phoneNo = TextEditingController();
//
//   void registerUser(String email, String password){
//     Authentication.instance.createUserWithEmailAndPassword(email, password);
//   }
// }
//
//
