import 'package:flutter/material.dart';
import 'package:mycounterapp/counter.dart';
import 'package:mycounterapp/methods.dart';

class CounterAppMaterial extends StatefulWidget {
  const CounterAppMaterial({super.key});

  @override
  State<CounterAppMaterial> createState() => _CounterAppMaterialState();
}

class _CounterAppMaterialState extends State<CounterAppMaterial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: topBar(true),
          bottomNavigationBar: buttomBar(true, false, 1, context,
              const Color.fromARGB(255, 11, 40, 93), Colors.white, Colors.grey),
          body: Center(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/images/wallpaper_android.webp",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 60,
                  right: 0,
                  left: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/zikirmatik.png',
                            width: 300,
                          ),
                          Positioned(
                            top: 55,
                            right: 80,
                            child: counterText(50, Colors.white),
                          ),
                          Positioned(
                            bottom: 30,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  incrementCounter();
                                });
                              },
                              child: Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 76,
                            bottom: 114,
                            child: GestureDetector(
                              onTap: () {
                                showResetAlert(true, context, () {
                                  setState(() {
                                    resetCounter();
                                  });
                                });
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
