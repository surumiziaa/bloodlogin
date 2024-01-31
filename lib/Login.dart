
import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}


class _LoginpageState extends State<Loginpage> {
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
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Center(child: Text("LOGIN"),),
        backgroundColor: Color(0xff880808),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailcontro,
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
            //  login();
            },
            child:Text('Login'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff880808),),
                minimumSize:MaterialStateProperty.all(Size(200,50))
            ),
          ),
          SizedBox(height: 15),
          Text('OR'),
          TextButton(
              onPressed:()
              {
                Navigator.pop(context);
              },
              child: Text('Forgot Password',
              style: TextStyle(color:Colors.black),),),
        ],
      ),

    );
  }
  // Future login()async{
  // final user= await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailcontro.text.trim(),
  //       password:passcontro.text.trim());
  //  if(user!=null){
  //    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
  //      return Homepage();
  //    }));
  //  }
  // }
}
