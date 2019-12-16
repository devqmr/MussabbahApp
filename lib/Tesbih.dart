import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tesbih extends StatelessWidget {
  final Function _function;

  Tesbih(this._function);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 32.0, right: 32.0),
      child: RaisedButton(
        color: Colors.purple,
        child: Text(
          "تسبيح",
          style: TextStyle(
              color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        onPressed: _function,
      ),
    );
  }
}
