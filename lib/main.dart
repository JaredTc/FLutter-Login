
import 'package:flutter/material.dart';
import 'signup.dart';
import 'Login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: MyHomePage(),
       
      
    );
      
    
  }
}
