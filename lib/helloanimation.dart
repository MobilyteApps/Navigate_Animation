import 'package:flutter/material.dart';

class HelloAnimation extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
   Container(
    child: Text("Welcome To Flutter Animation",
    style: TextStyle(color: Colors.greenAccent),
    ),
   ),
   SizedBox(
     height: 15,
   ),
    Center( 
        child: RaisedButton(
          child: Text('Back Screen!'),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      ],
      ),
    );
  }
}
