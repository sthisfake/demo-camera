import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return changeNotifierProvider(
      child: MaterialApp(
        title: 'great places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber ,
        ),
        home: ...,
      ),
    );
  }
}
    // @override 
    // widget build(BuildContext context){
    //   return MaterialApp(

    //   );
    // }
  
