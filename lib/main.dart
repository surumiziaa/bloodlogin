import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyDfN79Zuj2NONrEdobo2aDf_9avA-6MXSY", appId:'1:813824991698:android:718047876db42f9e28280b' , messagingSenderId:'813824991698', projectId: 'login-344dd')
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
    );
  }
}
