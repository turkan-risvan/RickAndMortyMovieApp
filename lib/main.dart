import 'package:flutter/material.dart';
import 'package:fluttersinav/view/main_page.dart';
import 'package:fluttersinav/view_model/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (BuildContext context) => MainViewModel(),
        child: MainPage(),
      ),
    );
  }
}