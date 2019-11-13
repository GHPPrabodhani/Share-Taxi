import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignUp Page',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {

  // f45d27
  // f5851f

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            //box
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF740278),
                    Color(0xFFe32d7f)
                  ],
                ),
                // make round the edge of the box
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90)
                )
              ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),

                  //add name(share taxi)
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text("Share Taxi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900
                      )
                    )
                  ),
                Spacer(),

                  //add logo
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.local_taxi,//add image insted of icon
                      size: 70,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),

                  //add login text
                  Align(
                    alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15
                        ),
                        child: Text('SignUp',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),

            
           Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  //name
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 35,
                    padding: EdgeInsets.only(
                      top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        
                          hintText: 'Name',
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),

                  //NIC
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 35,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'NIC',
                      ),
                      keyboardType: TextInputType.text,
                       
                    ),
                  ),

                  //mobile Number
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 35,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mobile Number',
                      ),
                      keyboardType: TextInputType.text,
                       
                    ),
                  ),

                  //email
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 35,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                       
                    ),
                  ),

                  //password
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 35,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'password',
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                       
                    ),
                  ),

                  /*//re-enter password
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 30,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Re-enter the password',
                      ),
                      keyboardType: TextInputType.text,
                       
                    ),
                  ),*/

                  //gender
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 35,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Gender',
                      ),
                      keyboardType: TextInputType.text,
                       
                    ),
                  ),

                  // SignUp button
                    Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 30,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF740278),
                          Color(0xFFe32d7f)//225.4.127
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      )
                    ),
                    child: Center(
                      child: Text('Submit'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}