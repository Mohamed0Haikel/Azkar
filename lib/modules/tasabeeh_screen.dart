import 'package:azkar/modules/widgets/nav_drawar.dart';
import 'package:flutter/material.dart';


class TasbeehScreen extends StatefulWidget {

  const TasbeehScreen({Key? key}) : super(key: key);

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {

  String tasbeehButtonLabel = 'سبحان الله';
  int _tasbeehCounter = 0;

  void _changeTasbeehButtonDisplay() {
    if (tasbeehButtonLabel == 'سبحان الله') {
      tasbeehButtonLabel = 'الحمد لله';
    } else if (tasbeehButtonLabel == 'الحمد لله') {
      tasbeehButtonLabel = "لا إله إلا الله";
    } else if (tasbeehButtonLabel == "لا إله إلا الله") {
      tasbeehButtonLabel = 'الله اكبر';
    } else if (tasbeehButtonLabel == 'الله اكبر') {
      tasbeehButtonLabel = "لا حول ولا قوة إلا بالله";
    } else {
      tasbeehButtonLabel = 'سبحان الله';
    }
  }

  void _incrementTasbeehCounter() {
    setState(() {
      if (_tasbeehCounter == 33) {
        _tasbeehCounter = 0;
        _changeTasbeehButtonDisplay();
      } else {
        _tasbeehCounter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavDrawer(),
      appBar: AppBar(
          title: Text(
            'المسبحة',
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF4D616C),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              tasbeehButtonLabel,
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              '$_tasbeehCounter ',
              style: TextStyle(
                  color: Colors.black ,
                  fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            GestureDetector(
              onTap: () {
                _incrementTasbeehCounter();
              },
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height * 0.12,
                    backgroundColor: _tasbeehCounter.isOdd
                        ? const Color(0xFF4D616C)
                        : Color(0xFF365B70)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}