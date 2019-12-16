import 'package:flutter/material.dart';

class Jomlah extends StatelessWidget {
  final String _words;
  final MaterialColor color;

  Jomlah(this._words, {this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            _words,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: color,
              wordSpacing: 4,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
