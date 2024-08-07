import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.title, required this.onPressed, this.color});
  final String? title;
  final Function onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed as void Function()?,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
