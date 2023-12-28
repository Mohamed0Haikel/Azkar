import 'package:azkar/data/azkar_data.dart';
import 'package:azkar/modules/widgets/DateDay.dart';
import 'package:azkar/modules/widgets/azkar.dart';
import 'package:azkar/modules/widgets/nav_drawar.dart';
import 'package:flutter/material.dart';



class NightAzkar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
        title: Text('اذكار المساء'),
        backgroundColor: Color(0xFF4D616C),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          DateDay(),
          Expanded(
            child: azkar(azckar: night_azckar,),
          ),
        ],
      ),
    );
  }
}