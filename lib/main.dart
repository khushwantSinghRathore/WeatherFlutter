import 'package:flutter/material.dart';
import 'package:weatherapp/screens/header.dart';
import 'package:weatherapp/screens/maincard.dart';
import 'package:weatherapp/screens/moreinfo.dart';
import 'package:weatherapp/screens/nextdays.dart';
import 'package:weatherapp/screens/searchheader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'poppins',
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(
          255,
          87,
          90,
          127,
        ),
        body: Column(
          children: const [
            Header(),
            Searchbarheader(),
            SizedBox(),
            MainCard(),
            SizedBox(
              height: 15,
            ),
            MoreInfo(),
            SizedBox(
              height: 5,
            ),
            NextDays()
          ],
        ),
      ),
    );
  }
}
