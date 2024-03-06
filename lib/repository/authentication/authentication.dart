//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:tva_time_varience_authority/Pages/HomePageWidget.dart';
// import 'package:tva_time_varience_authority/Pages/LoginPage.dart';
// import 'signup_email_password_failure.dart';
//
// class Authentication extends GetxController{
//   static Authentication get instance => Get.find();
//
//   final _auth = FirebaseAuth.instance;
//   late final Rx<User?> firebaseUser;
//
//
//   @override
//   void onReady(){
//     Future.delayed(const Duration(seconds: 6));
//     firebaseUser = Rx<User?>(_auth.currentUser);
//     firebaseUser.bindStream(_auth.userChanges());
//     ever(firebaseUser, _setInitialScreen);
//   }
//
//   _setInitialScreen( User? user){
//     user == null? Get.offAll(() => const LoginPage()): Get.offAll(() => HomePage());
//   }
//
//   Future<void> createUserWithEmailAndPassword(String email, String password)async{
//     try{
//       await _auth.createUserWithEmailAndPassword(email: email, password: password);
//       firebaseUser.value != null? Get.offAll(() => HomePage()): Get.offAll(() => LoginPage());
//     }on FirebaseAuthException catch(e){
//       final ex = SignUpEmailAndPasswordFailure.code(e.code);
//       print('FIREBASE AUTH EXCEPTION: ${ex.message}');
//       throw ex;
//     }catch (_){
//       const ex = SignUpEmailAndPasswordFailure();
//       print('EXCEPTION: ${ex.message}');
//       throw ex;
//     }
//   }
//
//   Future<void> loginWithEmailAndPassword(String email, String password) async{
//     try{
//       await _auth.signInWithEmailAndPassword(email: email, password: password);
//     } on FirebaseAuthException catch(e){
//
//     }catch(_){}
//
//
// }
//   Future<void> logout() async => await _auth.signOut();
//
// }