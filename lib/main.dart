import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
      home:MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
   final String longtext= "The 2019 FIFA FIFPro Men’s and Women’s Players of the Year were announced at a gala celebration held at the Teatro all Scala in Milan on Monday evening.  Lionel Messi beat off competition from Juventus’ Cristiano Ronaldo and Liverpool’s Virgil van Dijk to take the Men’s award. The FIFA Awards became a stand-alone event in 2016 and Cristiano Ronaldo took home the first two trophies. Last year the winner was Real Madrid and Croatia midfielder Luka Modric.";
  _showExitPop(context){
    return showDialog(
      context: context,
      builder:(context){
      return AlertDialog(
       title:Text('Confirm') ,
        content:SingleChildScrollView(
          child:ListBody(
            children: <Widget>[Text("Do you want to quit?")],
          ) ,
        ) ,
        actions: <Widget>[
          RaisedButton(
            color: Colors.blue,
             child: Text("OK"),
             onPressed: (){
              SystemNavigator.pop();
             },
          ),
          RaisedButton(
            color: Colors.white,
            child: Text("NO"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
        ],
      );

        },

    );
  }

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
          onWillPop:(){
            _showExitPop(context);
          },
      child: Scaffold(
        body:ListView(
          children: <Widget>[
            Text(longtext+longtext+longtext,style: TextStyle(color: Colors.blue,fontSize: 30,fontStyle: FontStyle.italic),textAlign:TextAlign.justify ,),
          ],
        ) ,

      ),
    );
  }
}
