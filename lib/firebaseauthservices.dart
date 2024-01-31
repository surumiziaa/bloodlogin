import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ElevatedButton(
        onPressed:()async{
         await FirebaseAuth.instance.signOut();
        },
        child:Text('singout'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xff880808),),
            minimumSize:MaterialStateProperty.all(Size(200,50))
        ),
      ),
    );
  }
}
