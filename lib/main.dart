import 'package:flutter/material.dart';
import 'package:movie_app_flutter/ui/pages/DestinationPage.dart';
import 'package:movie_app_flutter/ui/pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        canvasColor:Color.fromRGBO(29, 29, 39, 1) ,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
          bottom: false,
          child: HomePage()),
    );
  }
}

