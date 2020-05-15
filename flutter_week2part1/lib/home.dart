import 'package:flutterweek2part1/main.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menu home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

          Container(
            padding: EdgeInsets.only(bottom: 20.0),
              child: Text("username anda adala  ")
          ),
          Text("username anda adala "),
          Container(
            padding: EdgeInsets.only(top: 50),
            child: MaterialButton(
              color: Colors.blue,
                child: Text("logout"),
                onPressed: (){
              Navigator.pop(context);
            }),
          )

        ],),
      )
    );
  }
}
