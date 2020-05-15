import 'package:flutter/material.dart';
import 'package:flutterweek2part1/main.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  ListView(

        children: <Widget>[
          Form(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'username'),

                    ),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'nama')
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'nik'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'alamat'),
                    ),TextFormField(
                      decoration: InputDecoration(labelText: 'no hp'),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'password'),
                    ),
                    FlatButton(
                      color: Colors.amber,
                      child: Text('daftar',
                      ),
                      onPressed: (){},
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Text('sudah punya akun ?'),
                    )
                  ],

                ),
              )
          ),
        ],
      ),
    );
  }
}
