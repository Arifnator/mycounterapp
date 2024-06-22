import 'package:flutter/material.dart';

int counter = 0;

void incrementCounter() {
    counter++;
}

void resetCounter() {
    counter = 0;
}

Text counterText(double size, Color color) {
  return Text("$counter",
      style: TextStyle(
        fontFamily: "Digital7",
        fontSize: size,
        color: color,
      ));
}