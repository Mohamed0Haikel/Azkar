import 'package:azkar/modules/morning_azkar.dart';
import 'package:azkar/modules/night_azkar.dart';
import 'package:azkar/modules/quran_screen.dart';
import 'package:azkar/modules/sleeping_azkar.dart';
import 'package:azkar/modules/tasabeeh_screen.dart';
import 'package:azkar/modules/widgets/DateDay.dart';
import 'package:azkar/modules/widgets/azkar.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        backgroundColor: Color(0xFF4D616C),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'أذكار',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/images.jpeg'))),
            ),

            ListTile(
              leading: Icon(
                Icons.sunny,
                color: Colors.white,
              ),
              title: Text(
                'أذكار الصباح',
              style: TextStyle(color: Colors.white,),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MorningAzkar(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.nightlight,color: Colors.white),
              title: Text('أذكار المساء',
              style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NightAzkar(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.bed_rounded,color: Colors.white),
              title: Text('أذكار النوم',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SleepingAzkar(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.timer_10_select,color: Colors.white),
              title: Text('المسبحة',
              style: TextStyle(color: Colors.white),),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TasbeehScreen(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.headphones,color: Colors.white),
              title: Text('القران',
                style: TextStyle(color: Colors.white),),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuranScreen(),
                  ),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
