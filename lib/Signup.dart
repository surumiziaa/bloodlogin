
import 'package:bloodlogin/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}



class _SignUpState extends State<SignUp> {
  final emailcontro =TextEditingController();
  final passcontro =TextEditingController();

  @override
  void dispose(){
    emailcontro.dispose();
    passcontro.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar:AppBar(
        title: Center(child: Text("SIGN IN"),),
        backgroundColor: Color(0xff880808),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:emailcontro ,
              cursorColor:Color(0xff880808),
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Color(0xff880808),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Color(0xff880808),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height:10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passcontro,
              decoration:InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff880808),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff880808),
                      )
                  )
              ),
            ),
          ),
          SizedBox(
            height:10,
          ),
          ElevatedButton(
            onPressed:(){
              Navigator.pop(context);

            },
            child:Text('Sigin In'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff880808),),
                minimumSize:MaterialStateProperty.all(Size(200,50))
            ),
          )
        ],
      ),

    );
  }
  // Future signup()async{
  //  await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email:emailcontro.text.trim() ,
  //       password:passcontro.text.trim());
  // }

Future<void>singin()async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailcontro.text,
          password: passcontro.text
      );
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>
      Loginpage()));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content:Text('Created Successfully'),
        )
      );
    }
    on FirebaseAuthException catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('try again')));
    }
}


}
