import 'package:flutter/material.dart';
import 'package:resturant/resturant_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const ResturantApp());
}

