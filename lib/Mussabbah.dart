import 'package:flutter/material.dart';

import 'Jomlah.dart';
import 'Tesbih.dart';

class Mussabbah extends StatefulWidget {
  @override
  _MussabbahState createState() => _MussabbahState();
}

class _MussabbahState extends State<Mussabbah> {
  void _increaseNumber() {
    updateIndex();
  }

  void _clearNumber() {
    setState(() {
      _i = 0;
    });
  }

  var _i = 0;

  void updateIndex() {
    setState(() {
      if (_i > 99) {
        _i = 0;
      } else {
        _i++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Title Here',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("الباقيات الصالحات"),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/flowers.jpg"),
                  fit: BoxFit.fitWidth)),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.white70),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Jomlah(
                      ' {الْمَالُ وَالْبَنُونَ زِينَةُ الْحَيَاةِ الدُّنْيَا وَالْبَاقِيَاتُ الصَّالِحَاتُ خَيْرٌ عِنْدَ رَبِّكَ ثَوَاباً وَخَيْرٌ أَمَلا}ً (الكهف-46) ',
                      color: Colors.lightGreen,
                    ),
                  ),
                  Jomlah(
                    '" سبحان الله \nوالحمد لله \nولا إله إلا الله \nوالله أكبر \nولا حول ولا قوة إلا بالله العلي العظيم "',
                    color: Colors.blue,
                  ),
                  Jomlah(
                    "عدد مرات الذكر " + "$_i",
                  ),
                  Tesbih(_increaseNumber),
                  RaisedButton(
                    color: Colors.deepPurple,
                    child: Text(
                      "إعادة",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: _clearNumber,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
