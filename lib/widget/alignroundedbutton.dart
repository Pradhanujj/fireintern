import 'package:flutter/material.dart';

class RoundedReact extends StatelessWidget {
   RoundedReact({
    Key? key,required this.name,required this.Icons
  }) : super(key: key);
  final String name;
  IconData Icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 290,
      child:TextField(
        decoration:InputDecoration(
          prefixIcon: Icon(Icons),
            label: Text(name,
              style: TextStyle(color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Color(0xffFE9706)),
              borderRadius: BorderRadius.all(Radius.circular(10)) ,)
        ),
      ),
    );
  }
}


