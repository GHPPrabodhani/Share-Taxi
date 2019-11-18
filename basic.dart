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

class _LoginPageState extends State<LoginPage> {//309

  
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
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}