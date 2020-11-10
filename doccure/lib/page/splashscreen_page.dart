import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doccure/page/login_page.dart';



class SplashscreenPage extends StatefulWidget{
  @override
  _SplashScreenState createState() =>_SplashScreenState();
}

class _SplashScreenState extends State<SplashscreenPage>{

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds:3),
          (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginPage(),),);
        },
    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assests/images/bg.png"),
         fit: BoxFit.cover,
         ),
       ),
      ),
    );


  }


}