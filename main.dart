import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutterassignment/log_one.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Project',
      home: TouristApp(),
    );
  }
}

class TouristApp extends StatefulWidget {
  const TouristApp({Key? key}) : super(key: key);

  @override
  State<TouristApp> createState() => _TouristAppState();
}

class _TouristAppState extends State<TouristApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        body: AnimatedSplashScreen(
          backgroundColor: Colors.blue,
          splashTransition: SplashTransition.rotationTransition,
          duration: 1,
          splash: Icon(
            Icons.travel_explore,
            color: Colors.blue[200],
            size: 100,
          ),
          nextScreen: const LogOne(),
        ));
  }
}
