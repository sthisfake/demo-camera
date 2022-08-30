import 'dart:ffi';

import 'dart:io';
import 'package:flutter/foundation.dart';


class placeLocation{
  final double latitude;
  final double longitude;
  final String address;

  placeLocation({required this.latitude , required this.longitude , required this.address});

}


class Place {

  final String id;
  final String title;
  final placeLocation location ;
  final File image ;


Place({ required this.id ,
        required this.title ,
        required this.location ,
        required this.image ,
});

}
