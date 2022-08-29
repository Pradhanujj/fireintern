import 'package:fireintern/widget/alignroundedbutton.dart';
import 'package:fireintern/widget/widget1.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
        BackgroundImage(
          imagePath: 'image/Rectangle 9.png',
          imagePath1: 'image/backgroung.png',),
         Scaffold(
          resizeToAvoidBottomInset: true,
           backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top:40,left: 30),
          // height: MediaQuery.of(context).size.height - 40,
          // width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Hello!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 20,),
                  Text("Signup to Creat an account here. ",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)
                ],
              ),
              Column(
                children: <Widget>[
                   RoundedReact(name:'username', Icons: Icons.person_add,),
                   SizedBox(height: 20,),
                   RoundedReact(name:'Email', Icons: Icons.email,),
                  SizedBox(height: 20,),
                   RoundedReact(name:'Phone', Icons: Icons.phone_android,),
                  SizedBox(height: 20,),
                   RoundedReact(name:'password', Icons: Icons.lock_outlined,),
                  SizedBox(height: 20,),
                   RoundedReact(name:'Confirm password', Icons: Icons.lock_outlined,),
                ],
              ),
              Center(
                child: Container(
                  height: 33,
                  width: 184,
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
                      "CREATE", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Already have an account?"),
                  Text(" Login Here", style:TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff268ADC),
                      fontSize: 18
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
        ]
    );
  }
}



// // we will be creating a widget for text field
// Widget inputFile({label, obscureText = false})
// {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         label,
//         style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.w400,
//             color:Colors.black87
//         ),
//
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0,
//                 horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Colors.grey
//               ),
//
//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.grey)
//             )
//         ),
//       ),
//       SizedBox(height: 10,)
//     ],
//   );
// }