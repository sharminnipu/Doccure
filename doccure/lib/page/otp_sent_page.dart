import 'dart:async';

import 'package:doccure/page/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OTPSendPage extends StatefulWidget{
  @override
  _OtpSendPage createState() =>_OtpSendPage();

}

class _OtpSendPage extends State<OTPSendPage>{


  Timer _timer;
  int _start = 40;
  bool isGoing=true;

  bool startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_start < 1) {
            _timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
    return true;
  }
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();

  @override
  void initState() {
    startTimer();
    super.initState();

  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      resizeToAvoidBottomInset: false,
      body:Stack(
        fit:StackFit.expand,
        children:<Widget> [
          Container(
            decoration: BoxDecoration(color:Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,


            children: <Widget>[
              Expanded(
                child: Container(
                  margin:EdgeInsets.only(top: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget> [
                      Image.asset(
                        'assests/images/logo.png',
                        width:50,
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child:Text('Enter OTP',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child:Text('We have sent otp via sms to',
                          style: TextStyle(
                            fontSize: 18.0,

                          ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child:Text('01766487979',
                          style: TextStyle(
                            fontSize: 18.0,

                          ),),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 40),
                          child: Row(
                            children: <Widget>[
                              Expanded(

                                child:TextField(
                                  focusNode: f1,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(

                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff377D84), width: 2.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff377D84), width: 2.0),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      f1.unfocus();
                                      FocusScope.of(context).requestFocus(f2);
                                    }
                                    // this.phoneNo=value;
                                    print(value);
                                  },
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Expanded(
                                child: TextField(
                                  focusNode: f2,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(

                                       enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                           color: Color(0xff377D84), width: 2.0),
                                          ),
                                      focusedBorder: OutlineInputBorder(
                                       borderSide: BorderSide(
                                        color: Color(0xff377D84), width: 2.0),
                                           ),
                                    ),

                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      f2.unfocus();
                                      FocusScope.of(context).requestFocus(f3);
                                    }
                                  },
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Expanded(
                                child:TextField(
                                  focusNode: f3,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff377D84), width: 2.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff377D84), width: 2.0),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      f3.unfocus();
                                      FocusScope.of(context).requestFocus(f4);
                                    }
                                    print(value);
                                  },
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Expanded(
                                child: TextField(
                                  focusNode: f4,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff377D84), width: 2.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff377D84), width: 2.0),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      f4.unfocus();
                                     // FocusScope.of(context).requestFocus(f4);
                                    }
                                    print(value);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                        child: Container(
                          width: double.infinity,
                          height: 50,

                          child: RaisedButton(
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)) ,
                            onPressed: (){
                              Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage(),),);
                            },
                            color: Color(0xff377D84),
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                fontWeight:FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                      ),


                    ],
                  ),
                ),
              ),

              if(_start>1)Visibility(
                visible: true,
                 child: Padding(
                padding: EdgeInsets.only(bottom: 50.0),

                   child: Align(
                  alignment: Alignment.bottomCenter,

                   child: Text("Resend otp in $_start s"),
                ),
              ),),
              if(_start==0)Padding(
               padding: EdgeInsets.only(bottom: 10.0),

               child: Align(
                 alignment: Alignment.bottomCenter,

                 child: Text("Don't receive OTP ? "),
               ),
             ),
               if (_start==0) Padding(
                padding: EdgeInsets.only(bottom: 40.0,top: 5.0),

                child: Align(
                  alignment: Alignment.bottomCenter,

                  child: GestureDetector(
                    onTap: (){
                      //otp call again;
                    },
                   child: Text(" Resend Code",
                      style:TextStyle(
                        color: Color(0xff377D84),
                      ),

                    ),
                  ),

                ),
              ),

            ],
          )
        ],
      ),
    );

  }

}