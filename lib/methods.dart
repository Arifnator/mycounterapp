import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycounterapp/screens/material_screen.dart';
import 'package:mycounterapp/screens/cupertino_screen.dart';

bottomBar(bool isMaterial, bool inHome, int index, BuildContext context,
    Color bgColor, Color selectedColor, Color unselectedColor) {
  if (isMaterial) {
    return BottomNavigationBar(
      currentIndex: index,
      backgroundColor: bgColor,
      selectedItemColor: selectedColor,
      unselectedItemColor: unselectedColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.apple),
          label: "Cupertino",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.android),
          label: "Material",
        ),
      ],
      onTap: (currentIndex) {
        if (inHome) {
          if (currentIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CounterAppCupertino()),
            );
          } else if (currentIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CounterAppMaterial()),
            );
          }
        } else {
          if (index == 1 && currentIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CounterAppCupertino()),
            );
          } else if (index == 0 && currentIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CounterAppMaterial()),
            );
          }
        }
      },
    );
  } else {
    return CupertinoTabBar(
      currentIndex: index,
      backgroundColor: bgColor,
      activeColor: selectedColor,
      inactiveColor: unselectedColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.apple),
          label: "Cupertino",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.android),
          label: "Material",
        ),
      ],
      onTap: (currentIndex) {
        if (inHome) {
          if (currentIndex == 0) {
            Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => const CounterAppCupertino()),
            );
          } else if (currentIndex == 1) {
            Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => const CounterAppMaterial()),
            );
          }
        } else {
          if (index == 1 && currentIndex == 0) {
            Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => const CounterAppCupertino()),
            );
          } else if (index == 0 && currentIndex == 1) {
            Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => const CounterAppMaterial()),
            );
          }
        }
      },
    );
  }
}

topBar(bool isMaterial) {
  if (isMaterial) {
    return AppBar(
      title: const Text('Counter App Material Style',
          style: TextStyle(color: Colors.white)),
      backgroundColor: const Color.fromARGB(255, 11, 40, 93),
    );
  } else {
    return CupertinoNavigationBar(
      backgroundColor:
          const Color.fromARGB(255, 0, 0, 0).withValues(alpha: 0.2),
      middle: const Text("Counter App Cupertino Style",
          style: TextStyle(color: Colors.white)),
    );
  }
}
