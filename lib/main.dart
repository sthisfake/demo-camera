import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';
import './providers/great_places.dart';
import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'great places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber ,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlacesScreen.rootName : (ctx) => AddPlacesScreen(),
        },
      ),
    );
  }
}
    // @override 
    // widget build(BuildContext context){
    //   return MaterialApp(

    //   );
    // }
  
