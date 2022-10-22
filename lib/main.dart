import 'package:flutter/material.dart';
import 'models/location.dart';
import 'package:travel_app/location_detail.dart';
import 'models/mock_location.dart';


void main() {
  final Location mockLocation = MockLocation.FetchAny();

  return runApp(MaterialApp(home: LocationDetail(mockLocation)));
}