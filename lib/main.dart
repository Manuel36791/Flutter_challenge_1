import 'package:flutter/material.dart';
import 'package:flutter_challenge_1/modules/login_screen/login_screen.dart';


//hello world you cant meet the world without know how to say hello
/// my name is Manuel and I'm a junior flutter developer
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
          )),
      home: LoginScreen(),
    );
  }
}
