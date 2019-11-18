import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

//final String url = "https://www.adamgault.co.uk/wp-content/uploads/2015/11/TradeIndustry038.jpg";


class _ProfilePageState extends State<ProfilePage> {

  
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  TextStyle _style(){
    return TextStyle(
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            //box
            Container(//111
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
                children: <Widget>[

                // menu and notification icons  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  
                  IconButton(
                    icon: Icon(Icons.menu, color: Colors.white,),
                    onPressed: (){},
                  ),

                //this name come from db
                  Text("Milan Short", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                  ),

                  IconButton(
                    icon: Icon(Icons.notifications, color: Colors.white,),
                    onPressed: (){},
                  )
                ],
              ),
                
                  Spacer(),
                //add profile picture
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                    //this part doesnt work
                    width: 50,
                    height: 50,
                    decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        image:  DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.woolha.com/media/2019/06/buneary.jpg")
                        ),
                    ),
        
      
                      /*decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(url)
                          )
                      ),*/
                    ),
                  ],
                  ),

                  //add login text
                  Align(
                    alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15
                        ),
                        child: Text('Profile',
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

            //all data should come via database
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 32,left: 20),
              alignment: Alignment.topLeft,
                
              child: Column(
                
                children: <Widget>[
                Text("Name",style: _style()),
                SizedBox(height: 4,),
                Text("Milan Short"),
                SizedBox(height: 16,),

                Text("Email", style: _style(),),
                SizedBox(height: 4,),
                Text("milan@gmail.com"),
                SizedBox(height: 16,),

                Text("Location", style: _style(),),
                SizedBox(height: 4,),
                Text("New York, USA"),
                SizedBox(height: 16,),

                Text("Language", style: _style(),),
                SizedBox(height: 4,),
                Text("English, French"),
                SizedBox(height: 16,),

                Text("Occupation", style: _style(),),
                SizedBox(height: 4,),
                Text("Employee"),
                SizedBox(height: 16,),
                   ],
              ),
            ),

          //edit button
          Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: (){
                  print("//TODO: button clicked");
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 4,left: 16, right: 16, bottom: 4
                    ),
                    child: Container(
                      width: 110,
                      height: 30,
                      child: Center(
                        child: Text(
                          "Edit Profile".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900
                            ),
                        ),
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
                          ),
                      ),
                    ), 
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}