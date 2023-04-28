import 'package:flutter/material.dart';

Widget Button(
        double padding,
        Color color,
        double borderRadius,
        onPressed,
        String text,
        Color textColor,
        Color borderColor,
        double elevation,
        double fSize) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: MaterialButton(
        //edit pressed button color
        color: color,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: textColor, fontSize: fSize)),
      ),
    );
