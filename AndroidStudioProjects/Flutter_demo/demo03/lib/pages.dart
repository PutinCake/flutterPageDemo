import 'package:flutter/material.dart';
import 'custom.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstyeahPage', style: TextStyle(fontSize:36.0)),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64
        ),
        onPressed: (){
          Navigator.of(context).push(CustomRoute(SecondPage()));
        },
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
        title: Text('SecondPage', style: TextStyle(fontSize:36.0)),
        backgroundColor: Colors.pinkAccent,
        leading:Container(),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64
        ),
        onPressed: (){
          Navigator.of(context).pop();
        },
        ),
      )
    );
  }
}