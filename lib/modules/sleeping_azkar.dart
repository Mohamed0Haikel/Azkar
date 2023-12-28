import 'package:azkar/data/azkar_data.dart';
import 'package:azkar/modules/widgets/DateDay.dart';
import 'package:azkar/modules/widgets/azkar.dart';
import 'package:azkar/modules/widgets/nav_drawar.dart';
import 'package:flutter/material.dart';



class SleepingAzkar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        title: Text('اذكار النوم'),
        backgroundColor: Color(0xFF4D616C),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          DateDay(),
          Expanded(
            child: azkar(azckar: sleeping_azckar,),
          ),
        ],
      ),
    );
  }
}