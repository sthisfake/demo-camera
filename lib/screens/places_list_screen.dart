import '../screens/add_place_screen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("your places"),
        actions: <Widget>[IconButton(onPressed: () {
         Navigator.of(context ).pushNamed(AddPlacesScreen.rootName);
        }, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: CircularProgressIndicator(),
        ),
    );
  }
}
