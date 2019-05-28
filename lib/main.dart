import 'package:flutter/material.dart';

import 'statics.dart';
import 'home.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connect',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.w300,
            fontSize: 32.0,
            fontFamily: 'Comfortaa'
          ),
          display2: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w300,
              fontSize: 52.0,
              fontFamily: 'Comfortaa'
          )
        )
      ),
      home: MyHomePage(title: 'Pathaway'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Pathaway', style: Theme.of(context).textTheme.display2),
              Divider(
                height: 32.0,
                color: Colors.transparent,
              ),
              TextField(
                controller: usernameController,
                style: Theme.of(context).textTheme.display1,
                decoration: InputDecoration(hintText: 'Username', hintStyle: Theme.of(context).textTheme.display1),
              ),
              Divider(
                height: 32.0,
                color: Colors.transparent,
              ),
              TextField(
                controller: passwordController,
                style: Theme.of(context).textTheme.display1,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password', hintStyle: Theme.of(context).textTheme.display1),
              ),
              Divider(
                height: 32.0,
                color: Colors.transparent,
              ),
              FlatButton(
                onPressed: () {
                  Statics.username = usernameController.text;
                  Statics.password = passwordController.text;
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                },
                color: Colors.indigo,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))
                ),
                child: Container(
                  child: Center(
                    child: Text('Login', style: Theme.of(context).textTheme.display1),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
