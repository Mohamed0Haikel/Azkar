import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:jhijri/jHijri.dart';

class DateDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final jh = JHijri(fDate: DateTime.now());
    var day = DateTime.now();
    var format = DateFormat('dd-MM-yyyy');
    var formatted = format.format(day);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  jh.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  jh.hijri.dayName.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  formatted,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
    );
  }
}

///var format = DateFormat('EEE , d / MM / yyyy'); = sun , 17 / 12 / 2023
///var format = DateFormat('EEE , d MMM yyyy'); = sun , 17 Dec 2023
///var format = DateFormat('d / MM / yyyy'); = sun , 17 / 12 / 2023
///var format = DateFormat('d-MM-yyyy'); = 17-12-2023
