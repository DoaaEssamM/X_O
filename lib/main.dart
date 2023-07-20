import 'package:flutter/material.dart';
import 'package:practice/BoardScreen.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        BoardScreen.routeName: (_)=> BoardScreen(),

      },
      initialRoute: BoardScreen.routeName,
    );


  }
}
