import 'package:flutter/material.dart';

//DateTime selectedDate = DateTime.now();

class Date {
  Future<DateTime> selectDate(BuildContext context,DateTime selectedDate) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if(picked != null && picked != selectedDate)
       {
        selectedDate = picked;
       }
      return selectedDate;
    }
  }