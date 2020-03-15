import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: <Widget>[
              FlareActor(
                'assets/animations/Space.flr',
                animation: 'Space',
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
              // Image.asset(
              //   'assets/images/space.png',
              // ),
              Transform.rotate(
                angle: pi / -15,
                child: Transform.translate(
                  offset: Offset(25, 20),
                  child: Image.asset('assets/images/cassette.png'),
                ),
              ),
              Transform.rotate(
                angle: pi / -15,
                child: Transform.translate(
                  offset: Offset(25, 20),
                  child: Image.asset('assets/images/bottle.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
