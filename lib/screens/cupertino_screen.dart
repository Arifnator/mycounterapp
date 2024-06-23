import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycounterapp/counter.dart';
import 'package:mycounterapp/methods.dart';

class CounterAppCupertino extends StatefulWidget {
  const CounterAppCupertino({super.key});

  @override
  State<CounterAppCupertino> createState() => _CounterAppCupertinoState();
}

class _CounterAppCupertinoState extends State<CounterAppCupertino> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
          tabBar: buttomBar(
              false,
              false,
              0,
              context,
              const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
              Colors.white,
              Colors.grey),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  backgroundColor: const Color.fromARGB(255, 18, 38, 60),
                  navigationBar: topBar(false),
                  child: Center(
                    child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/wallpaper.jpeg",
                            fit: BoxFit.cover,
                            // opacity: const AlwaysStoppedAnimation(.6),
                          ),
                          Positioned(
                            bottom: 200,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset("assets/images/counter2.png",
                                    width: 300),
                                Positioned(
                                  top: 85,
                                  width: 136,
                                  height: 55,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    right: 85,
                                    top: 94,
                                    child: counterText(50, Colors.white)),
                                Positioned(
                                  bottom: 50,
                                  width: 136,
                                  height: 55,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(63, 61, 61, 1)),
                                    child: const Text(
                                      "Arifmetric Counter",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 134, 134, 134)),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 40,
                                  right: 46,
                                  height: 8,
                                  width: 25,
                                  child: GestureDetector(
                                    onTap: () {
                                      showResetAlert(false, context, () {
                                        setState(() {
                                          resetCounter();
                                        });
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 100,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  incrementCounter();
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromRGBO(63, 61, 61, 1),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(63, 61, 61, 1),
                                          blurRadius: 3,
                                          spreadRadius: 3,
                                          offset: Offset(2, 2))
                                    ]),
                                child: const Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                );
              },
            );
          }),
    );
  }
}
