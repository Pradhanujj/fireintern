import 'package:fireintern/widget/alignroundedbutton.dart';
import 'package:fireintern/widget/overlapimage.dart';
import 'package:fireintern/widget/passwordinput.dart';
import 'package:fireintern/platte.dart';
import 'package:fireintern/widget/roundedbutton.dart';
import 'package:fireintern/signup.dart';
import 'package:fireintern/widget/text_input.dart';
import 'package:fireintern/widget/widget1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen()
      //LoginScreen()
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          imagePath: 'image/Rectangle 9.png',
          imagePath1: 'image/image 3.png',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(top:28.0),
            child:Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 10),
                  child: Center(
                    child: const Text('Welcome',
                    style: TextStyle(
                        fontSize:56,color: Color(0xffF4AE05
                    )),),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Column(
                   children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration:InputDecoration(
                            label: Text('Email',
                              style: TextStyle(color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:Color(0xffFE9706)),
                              borderRadius: BorderRadius.all(Radius.circular(10)) ,)
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration:InputDecoration(
                            label: Text('Password',
                              style: TextStyle(color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:Color(0xffFE9706)),
                              borderRadius: BorderRadius.all(Radius.circular(10)) ,)
                        ),
                      ),
                    SizedBox(height: 20,),
                    Text(
                    'Forgot Your Password?',
                    style: TextStyle(color:Color(0xff268ADC),
                   ),)
                      ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                      children: [
                        Container(
                          height: 47,
                          width: 200,
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration:
                          BoxDecoration(
                            color: Color(0xffAE710C),
                            borderRadius: BorderRadius.circular(10),
                            // border: Border(
                            //   bottom: BorderSide(color: Colors.black),
                            //   top: BorderSide(color: Colors.black),
                            //    left: BorderSide(color: Colors.black),
                            //   right: BorderSide(color: Colors.black),
                            // ),
                          ),
                          child: Center(
                            child: Text(
                              "LOGIN", style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            ),
                          ),
                        ),
                      SizedBox(height: 10,),
                      Center(child: Text('OR',
                      style: TextStyle(fontSize: 25,color: Color(0xffFF9603)),)),
                      const SizedBox(
                      height: 20,
                      ),
                      ],
                      ),
                      ],
                      ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(right:20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Do not have an account?',
                        style: TextStyle(
                          fontSize:18,color: Color(0xff858181),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                      });
                    },
                    child: const Text('Signup',
                    style: TextStyle(fontSize:18,color: Colors.blue,
                    ),),
                  ),
                ),
                SizedBox(height: 10,),
                OverlapImage()
                ],
               ),
            ),
           ))
    ]);
  }
}




