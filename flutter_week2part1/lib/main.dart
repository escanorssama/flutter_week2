import 'package:flutter/material.dart';
import 'package:flutterweek2part1/register.dart';
import 'package:flutterweek2part1/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = "asep", password = "udin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("judul"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(hintText: 'username'),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(hintText: 'password'),
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("login"),
              onPressed: (){
                if(usernameController != null && usernameController.text == username
                && passwordController != null && passwordController.text == password)
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Home()
                ));
              },
            ),
            InkWell(
              onTap: (){ Navigator.push(context, MaterialPageRoute(
                builder: (context) => register()
              ));},
              child: Text("tidak punya akun, silahkan kesini"),
            ),
            //JANGAN LUPA PAKE HELM
          ],
        ),
      )
    );
  }
}

