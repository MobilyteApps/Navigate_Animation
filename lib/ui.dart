import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_animations/animation/animationslideleft.dart';
import 'package:route_animations/animation/animationslideright.dart';
import 'package:route_animations/colors.dart';
import 'package:route_animations/datepicker.dart';
import 'package:route_animations/helloanimation.dart';
import 'package:route_animations/timepicker.dart';

import 'animation/animation_scale.dart';


class DatePicker extends StatefulWidget {

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

DateTime selectedDate = DateTime.now();
TimeOfDay timeofday = TimeOfDay.now();
 TimeOfDay time;
 DateTime date;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
           Container(
              padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
              color: AppColors.colorLightIndigo,
              height: 30,
              width: 300,
      //child:Text("${selectedDate.toString().split(" ")[0]} ${time.hour}:${time.minute} ",textAlign: TextAlign.center,),
        child: date != null ? dateText() : null,
      ),
    SizedBox(height: 50,),
       Container(
              padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
              color: AppColors.colorLightCyan,
              height: 30,
              width: 300,
      //child:Text("${selectedDate.toString().split(" ")[0]} ${time.hour}:${time.minute} ",textAlign: TextAlign.center,),
        child: time != null ? timeText() : null,
       ),
      SizedBox(height: 20.0),
         Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            RaisedButton(
              onPressed: () async { 
               // _selectDate(context);
                  selectedDate = await Date().selectDate(context, selectedDate);
                  print(selectedDate);
                    setState(() {
                      date = selectedDate;
                    });
                   },
          child: Text('Select date'),
                   ),
         RaisedButton(
             onPressed: () async {
             timeofday = await Time().selectTime(context, timeofday);
           setState(() {        
                time = timeofday;  
              });
             },
          child: Text('Select time'),
            ),
          ],
         ),   
 
        SizedBox(height: 40,),
          Column(
            children: <Widget>[
          RaisedButton(
            color: Colors.cyan,
               elevation: 5.0,
               onPressed: (){
                 Navigator.push(context, SlideRightRoute(page: HelloAnimation()));
               },
               child: Text('Animation SlideRight'),
          ),
         
       SizedBox(height: 30,),
          RaisedButton(
            color: Colors.cyanAccent,
               elevation: 5.0,
               onPressed: (){
                   Navigator.push(context, SlideLeftRoute(page: HelloAnimation()));
               },
               child: Text('Animation SlideLeft'),
          ),

          SizedBox(height: 30,),
          RaisedButton(
            color: Colors.teal,
               elevation: 5.0,
               onPressed: (){
                   Navigator.push(context, ScaleRoute(page: HelloAnimation()));
               },
               child: Text('Animation Scale'),
          ),
            ],
          ),    
       ],
     ),
    ),
  );
 }
 Widget dateText(){
   return Text("${selectedDate.toString().split(" ")[0]}" ,
            textAlign: TextAlign.center,);
     }

 Widget timeText(){
   return Text(" ${timeofday.toString().split("(")[1].split(")")[0]}",
   textAlign: TextAlign.center,
          );
        }
}


































 // Future<String> _selectDate(BuildContext context) async {
  //   final DateTime picked = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(2015, 8),
  //       lastDate: DateTime(2101));
  //   if (picked != null && picked != selectedDate)
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //     return "time";
  // }

  // Future<String> selectTime(BuildContext context) async {
  //   final TimeOfDay picked = await showTimePicker(
  //       context: context,
  //       initialTime: timeofday
  //       );
        // firstDate: DateTime(2015, 8),
        // lastDate: DateTime(2101));
  //   if (picked != null && picked != timeofday)
  //     setState(() {
  //       timeofday = picked;
  //     });
  //     return "time";
  // }