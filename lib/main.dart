import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'events.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Events',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.black, fontFamily: 'Inter', fontSize: 24)),
        textTheme: TextTheme(
          // Define the default text styles for the app
          bodyText1: TextStyle(color: Colors.black, fontFamily: 'Inter'),
          bodyText2: TextStyle(color: Colors.black, fontFamily: 'Inter'),
          // You can define additional text styles as needed
        ),
      ),
      home: const EventsPage(),
    );
  }
}
