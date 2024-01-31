import 'package:bloodlogin/Login.dart';
import 'package:bloodlogin/Signup.dart';
import 'package:flutter/material.dart';
class Frontpage extends StatelessWidget {
  const Frontpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
                          },
                          child:Text('SIGN IN'),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(Color(0xff880808)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: ()
                        {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Loginpage()));
                        },
                        child:Text('LOGIN'),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(Color(0xff880808)),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(250.0),
                    child: Container(
                      child: Center(
                        child: Text('BLOOD DONATION',
                          style: TextStyle(color:Color(0xffc40f0f),),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
