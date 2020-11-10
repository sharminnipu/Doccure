import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget{
  @override
  _homePageState createState()=>_homePageState();

}
class _homePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
      appClose();
    },
        child:Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.white,
            elevation: 0,
            leading:IconButton(
              icon: Icon(Icons.menu,color: Color(0xff377D84),),
              onPressed: () {},
            ),
            title: Text('Doccure',style: TextStyle(color: Colors.black,fontSize: 18),
            ),
            centerTitle: true,
            actions:<Widget> [
              IconButton(icon: Image.asset('assests/images/earth.png',width:20,height: 20,),)
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home'),
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile')
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.settings),
                title: new Text('Setting'),
              ),
            ],
          ),
         body: Stack(
             fit:StackFit.expand,
             children:<Widget> [

            Container(
           decoration: BoxDecoration(color:Colors.white),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:30,vertical:5),


                      ),





            ]),),
               ]),

    ),
    );
  }
  void appClose(){
    SystemNavigator.pop();
  }
}