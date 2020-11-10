import 'package:doccure/page/otp_sent_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';


class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();

}
class _LoginPageState extends State<LoginPage>{
  TextEditingController phoneNoController=TextEditingController();

  @override
  Widget build(BuildContext context) {


    return WillPopScope(
        onWillPop: () {
           appClose();
     },
     child:Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         leading: IconButton(
           icon: Icon(Icons.arrow_back,color: Colors.grey,),
           onPressed: (){
             appClose();
           },
         ),
         elevation: 0,
       ),
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
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Image.asset(
                        'assests/images/logo.png',
                        width:60,
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child:Container(
                         decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            border: Border.all(color: Colors.teal)
                        ),
                         child: Row(
                          children: <Widget>[
                            Expanded(
                              child: CountryCodePicker(
                                onChanged: print,
                                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                initialSelection: 'BD',
                                favorite: ['+880','BD'],
                                // optional. Shows only country name and flag
                                showCountryOnly: false,
                                // optional. Shows only country name and flag when popup is closed.
                                showOnlyCountryWhenClosed: false,
                                // optional. aligns the flag and the Text left
                                alignLeft: false,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Mobile No",
                                ),
                                onChanged: (value) {
                                  // this.phoneNo=value;
                                  print(value);
                                },
                              ),
                            ),
                          ],
                        ),
                        ),


                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                          width: double.infinity,
                          height: 50,

                          child: RaisedButton(
                           shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)) ,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPSendPage(),),);
                            },
                            color: Color(0xff377D84),
                            child: Text(
                              'next'.toUpperCase(),
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
              )
            ],
          )
        ],
      ),
    ),
    );

  }

  void appClose(){
    SystemNavigator.pop();
  }

}