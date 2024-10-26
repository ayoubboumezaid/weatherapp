
import 'package:flutter/material.dart';
import 'package:weatherapp/app.dart';
import 'package:weatherapp/core/databases/cache/cache_helper.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(App());
}