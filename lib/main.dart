import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          //ROW AND COLUMN ALL HAVE SAME RULES JUST FLIPPED X&Y VALUES
          child: Column(
            //verticalDirection: VerticalDirection.SPECIFY,
            //mainAxisAlignment: MainAxisAlignment.SPECIFY,
            //crossAxisAlignment: CrossAxisAlignment.SPECIFY,
            //CAN CREATE INVISIBLE CONTAINER TO PLACE CHILDREN RIGHT USING INFINITY WIDTH
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/fox.jpg'),
              ),
              Text(
                'Ethan Moffatt',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'DrSugiyama'),
              ),
              Text(
                'ASPIRING DEVELOPER',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2),
              ),
              SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                      color: Colors.blue.shade800,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    title: Text(
                      '+44 7828 41 4455',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontFamily: 'SourceSansPro',
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'ethanmoffatt@gmail.com',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontFamily: 'SourceSansPro',
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
