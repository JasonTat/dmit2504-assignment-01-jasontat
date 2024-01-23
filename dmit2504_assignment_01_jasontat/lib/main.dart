// ignore_for_file: use_key_in_widget_constructors, todo

import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          //const Row
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //TODO: Put your code here to complete this app.

            Column(
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
                  // padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.amber,
                    border: Border.all(color: Colors.black, width: 3)
                  ),
                  child: const Center(
                    child: Text(
                      'Container 1'
                    )
                  )
                ),

                RotationTransition(turns: AlwaysStoppedAnimation(45/360),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text('Container 2')
                    )
                  )
                )
             ],
            ),            
            Column(
              children: <Widget>[
                Container(
                height: 390.0,
                width: 100.0,
                margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.amber,
                ),
                child: const Align(
                  alignment:Alignment.bottomCenter,
                  child: Text('Container 3')),
            ),


            Padding(padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Container(
                height: 380.0,
                width: 100.0,
                margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                ),
                  // child: const Align(
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     'Container 4',
                  //   textAlign: TextAlign.right))
                  // child: const Text(
                  //   'Container 4',
                  //   textAlign: TextAlign.right,
                  // )
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Container 4'
                    )
                  )



              ),
            )
            ],
            ),            
            Column(
              children: <Widget>[
                Container(
                height: 100.0,
                width: 100.0,
                margin: const EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 3)
                ),
                child: const Center(
                  child: Text(                    
                    'Container 5',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
            ),
            Container(
                height: 250.0,
                width: 100.0,
                margin: const EdgeInsets.fromLTRB(0.0, 310.0, 0.0, 0.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                ),
                child: const Text(                    
                    'Con6',
                    style: TextStyle(
                      fontSize: 30.0,                      
                      color: Colors.black,
                    ),
                  ),
            ),


            ],
            ),







          ],
        ),



      ),
    );
  }
}