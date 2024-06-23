import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int counter = 0;

void incrementCounter() {
  counter++;
}

void resetCounter() {
  counter = 0;
}

showResetAlert(
    bool isMaterial, BuildContext context, VoidCallback resetCallback) {
  if (isMaterial) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Reset counter?'),
          content: const Text('Are you sure about to reset counter?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Yes');
                resetCallback();
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  } else {
    return showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Reset counter?'),
        content: const Text('Are you sure about to reset counter?'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
              resetCallback();
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}

Text counterText(double size, Color color) {
  return Text("$counter",
      style: TextStyle(
        fontFamily: "Digital7",
        fontSize: size,
        color: color,
      ));
}
