import 'package:flutter/material.dart';

import 'bottomSheetDemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = 'Flutter Bottom Sheet';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomSheetDemo(title: title),
    );
  }
}
