import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'test.dart';
import 'proj.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
void main() => runApp(MaterialApp(
  title: "Test",
  home:Homescreen(),
),);

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}



class _HomescreenState extends State<Homescreen> {
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
                    SizedBox(height: 50.0,),
                    FlatButton(
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/profile.jpeg'),
                      ),
                    ),
                    TyperAnimatedTextKit(
                      speed:Duration(milliseconds: 500),
                      text: [
                        "Umashankar"
                      ],
                      textStyle: TextStyle(
                        fontSize: 40.0,
                        fontFamily: "Pacifico",
                        fontWeight: FontWeight.bold,
                        color:Colors.white,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(18.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.contact_mail,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('umashanks99@gmail.com',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(18.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Row(
                        children:<Widget>[
                          Icon(Icons.phone_android,
                            color:Colors.teal,
                            size:20.0,),
                          SizedBox(
                            width:10.0,
                          ),
                          Text('9677039178',
                            style:TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    FlatButton(
                      child:Container(
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(18.0),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                        child: Row(
                          children:<Widget>[
                            Icon(Icons.web,
                              color:Colors.teal,
                              size:20.0,),
                            SizedBox(
                              width:10.0,
                            ),
                            Text('https://github.com/Shanks0465',
                              style:TextStyle(
                                color: Colors.teal,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      onPressed: (){

                      },
                    ),

                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child:Padding(
                padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  child: Text('Tech',style: TextStyle(color: Colors.teal),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Testscreen()));
                  },
                ),
              ),
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
                  child: Text('Projects',style: TextStyle(color: Colors.teal),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Projectscreen()));
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:Padding(
                padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  child: Text('Info',style: TextStyle(color: Colors.teal),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Testscreen()));
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


