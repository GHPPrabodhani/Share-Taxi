import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  // f45d27
  // f5851f

  //#fa07c5
  //#fa0768

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

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
                        child: Text('Login',
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
                  //username field
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
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
                        icon: Icon(Icons.email,
                            color: Colors.grey,
                        ),
                          hintText: 'Username or Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),

                  //password field
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
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
                        icon: Icon(Icons.vpn_key,
                          color: Colors.grey,
                        ),
                        hintText: 'Password',
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true, 
                    ),
                  ),

                  // login button
                    Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
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
                      child: Text('Login'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                  ),


                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 4,left: 16, right: 30, bottom: 4
                      ),
                      child: Text('Forgot Password?',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                  //Spacer(),

                  //horizontal line(----oR---)
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:const EdgeInsets.only(
                       top: 10,left: 16, right: 16, bottom: 4 
                      ) ,
                      //add horizontal line
                      child: Text('OR',
                        style:TextStyle(
                          fontWeight:FontWeight.bold,
                          color: Colors.grey 
                        )
                      ),
                    ),
                  ),
                  

                  //loging with facebook
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                       color: Color.fromRGBO(225, 4, 127, 5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: Center(
                      child: Text("Login With Facebook",
                        style:TextStyle(
                          fontWeight:FontWeight.w400,
                          color: Colors.white
                        ),
                      ),
                      
                      //KeyboardType:TextInputType.emailAddress,
                
                    ),
                  ),



                  
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 4,left: 16, right: 30, bottom: 4
                      ),
                      child: Text("Don't you have an account?"+"signup".toUpperCase(),//bold the signup
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w600
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