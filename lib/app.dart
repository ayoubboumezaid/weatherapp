
import 'package:flutter/material.dart';
import 'package:weatherapp/core/databases/cache/cache_helper.dart';
import 'package:weatherapp/main.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(App());
}
