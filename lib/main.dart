import 'package:flutter/material.dart';
import 'package:mycounterapp/methods.dart';

// Homescreen

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Builder(builder: (context) {
      return Scaffold(
          appBar: AppBar( 
            title: const Text('Welcome to my Counter App'),
            backgroundColor: Colors.amber,
          ),
          bottomNavigationBar: bottomBar(
              true, true, 0, context, Colors.amber, Colors.black, Colors.black),
          backgroundColor: const Color.fromARGB(255, 255, 225, 137),
          body: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chose a Style:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ));
    }));
  }
}
