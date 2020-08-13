import 'package:flutter/material.dart';
import 'package:portfolioapp/main.dart';

class Testscreen extends StatefulWidget {
  @override
  _TestscreenState createState() => _TestscreenState();
}

class _TestscreenState extends State<Testscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan[50],
                            blurRadius: 10.0,
                            spreadRadius: 2.5,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.android,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('Flutter',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width:50.0,
                          ),
                          Image(image: AssetImage('images/flutter.png'),width: 100.0,height: 100.0,),
                        ],
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan[50],
                            blurRadius: 10.0,
                            spreadRadius: 2.5,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.android,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('React Native',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width:30.0,
                          ),
                          Image(image: AssetImage('images/reactnative.png'),width: 100.0,height: 100.0,),
                        ],
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan[50],
                            blurRadius: 10.0,
                            spreadRadius: 2.5,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.android,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('Firebase',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width:30.0,
                          ),
                          Image(image: AssetImage('images/firebase.png'),width: 100.0,height: 100.0,),
                        ],
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan[50],
                            blurRadius: 10.0,
                            spreadRadius: 2.5,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.settings_input_component,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('Arduino',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width:30.0,
                          ),
                          Image(image: AssetImage('images/arduino.png'),width: 100.0,height: 100.0,),
                        ],
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan[50],
                            blurRadius: 10.0,
                            spreadRadius: 2.5,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.web,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('HTML',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width:30.0,
                          ),
                          Image(image: AssetImage('images/html.png'),width: 100.0,height: 100.0,),
                        ],
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan[50],
                            blurRadius: 10.0,
                            spreadRadius: 2.5,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.web,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('CSS',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width:30.0,
                          ),
                          Image(image: AssetImage('images/css.png'),width: 100.0,height: 100.0,),
                        ],
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyan[50],
                            blurRadius: 10.0,
                            spreadRadius: 2.5,
                            offset: Offset(
                              1.0,
                              1.0,
                            ),
                          ),
                        ],
                        borderRadius: new BorderRadius.circular(40.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.code,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('Tensorflow',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width:30.0,
                          ),
                          Image(image: AssetImage('images/tensorflow.png'),width: 100.0,height: 100.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child:Padding(
                padding: const EdgeInsets.fromLTRB(8.0,8.0,135.0,8.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  child: Text('Home',style: TextStyle(color: Colors.teal),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
