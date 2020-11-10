import 'package:flutter/material.dart';
import 'package:doccure/page/splashscreen_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff377D84),

  ));


  runApp(DoccureApp());
}

class DoccureApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Color(0xff377D84),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashscreenPage(),
    );
  }
}


