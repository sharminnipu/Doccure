import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';


class SignUpPage extends StatefulWidget{
  @override
  _SignUpState createState() =>_SignUpState();

}

class _SignUpState extends State<SignUpPage>{
  var _formKey=GlobalKey<FormState>();
  var _gernderDropDown=['Male','Female'];
  var _currentSelectedItem;
  var _dropVal;
   TextEditingController _nameController= TextEditingController();
   TextEditingController _selectGenderController=TextEditingController();
   TextEditingController _selectHospitalController=TextEditingController();
   TextEditingController _selectDepartmentController=TextEditingController();
   TextEditingController _designationController=TextEditingController();
   TextEditingController _educationController=TextEditingController();
   TextEditingController _bmdcNumberController=TextEditingController();
   TextEditingController _bmdcCertificateController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle=Theme.of(context).textTheme.title;

    return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title:Text('Personal Info',
         style:TextStyle(
           color:Colors.white,
           fontWeight:FontWeight.bold,
           fontSize: 15.0,
         ),
       ),
     ),
      body:Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListView(
              children:<Widget> [
                 Padding(
                    padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _nameController,
                      style:TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      validator: (String value){
                        if(value.isEmpty){
                          return 'Please Enter your name' ;
                        }
                      },
                      onChanged: (value){
                        debugPrint('Something change in the  Title text field');
                      },
                      decoration:InputDecoration(
                          prefixIcon: Icon(Icons.person_outline,color:Color(0xff377D84),),

                          labelText: 'Enter Your Name',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff377D84), width: 1.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )


                      ),
                    ),

                  ),

                //gender
                Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: TextFormField(
                    autofocus: false,
                    controller: _selectGenderController,
                    style:TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Please Select Gender' ;
                      }
                    },
                    onChanged: (value){
                      debugPrint('Something change in the  Title text field');
                    },
                    decoration:InputDecoration(
                        prefixIcon: IconButton(icon: Image.asset('assests/images/gender.png'),color:Color(0xff377D84),),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            Icons.arrow_drop_down,
                            color:Color(0xff377D84),
                          ),
                          onTap: () {

                          },
                        ),

                        labelText: 'Select Gender',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff377D84), width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )


                    ),
                  ),

                ),
                //hospital
                Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: TextFormField(
                    autofocus: false,
                    controller: _selectHospitalController,
                    style:TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Please Select Hospital' ;
                      }
                    },
                    onChanged: (value){
                      debugPrint('Something change in the  Title text field');
                    },
                    decoration:InputDecoration(
                        prefixIcon: Icon(Icons.add_circle_outline,color:Color(0xff377D84),),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            Icons.arrow_drop_down,
                            color:Color(0xff377D84),
                          ),
                          onTap: () {

                          },
                        ),

                        labelText: 'Select Hospital',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff377D84), width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )


                    ),
                  ),

                ),
                //department
                Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: TextFormField(
                    autofocus: false,
                    controller: _selectDepartmentController,
                    style:TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Please Select Department' ;
                      }
                    },
                    onChanged: (value){
                      debugPrint('Something change in the  Title text field');
                    },
                    decoration:InputDecoration(
                        prefixIcon: Icon(Icons.add_circle_outline,color:Color(0xff377D84),),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            Icons.arrow_drop_down,
                            color:Color(0xff377D84),
                          ),
                          onTap: () {

                          },
                        ),

                        labelText: 'Select Department',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff377D84), width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )


                    ),
                  ),

                ),
                //designation
                Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _designationController,
                    style:TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Please Enter your name' ;
                      }
                    },
                    onChanged: (value){
                      debugPrint('Something change in the  Title text field');
                    },
                    decoration:InputDecoration(
                        prefixIcon: Icon(Icons.g_translate,color:Color(0xff377D84),),

                        labelText: 'Designation',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff377D84), width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )


                    ),
                  ),

                ),
                //education
                Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _educationController,
                    style:TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Please Enter your name' ;
                      }
                    },
                    onChanged: (value){
                      debugPrint('Something change in the  Title text field');
                    },
                    decoration:InputDecoration(
                        prefixIcon: Icon(Icons.g_translate,color:Color(0xff377D84),),

                        labelText: 'Education',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff377D84), width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )


                    ),
                  ),

                ),
                //BMDC
                Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _bmdcNumberController,
                    style:TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Please Enter your name' ;
                      }
                    },
                    onChanged: (value){
                      debugPrint('Something change in the  Title text field');
                    },
                    decoration:InputDecoration(
                        prefixIcon: Icon(Icons.g_translate,color:Color(0xff377D84),),

                        labelText: 'BMDC Number',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff377D84), width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )


                    ),
                  ),

                ),
                //camera
                Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _bmdcCertificateController,
                    style:TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Please Enter your name' ;
                      }
                    },
                    onChanged: (value){
                      debugPrint('Something change in the  Title text field');
                    },
                    decoration:InputDecoration(
                        suffixIcon: Icon(Icons.camera_enhance,color:Color(0xff377D84),),

                        labelText: 'Select BMDC Certificate',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff377D84), width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )


                    ),
                  ),

                ),
                //Button
                Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,

                    child: RaisedButton(

                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)) ,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),),);
                      },
                      color: Color(0xff377D84),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Sign up",style: TextStyle(fontSize: 20,color: Colors.white)),

                          Icon(Icons.arrow_forward,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),

                ),






              ],
            ),
          ),



        ),

      ),

    );

  }

  void _onDropDownChanged(String value) {
    setState(() {
      _dropVal = value;
    });
  }


  void appClose(){
    Navigator.pop(context);
  }

}