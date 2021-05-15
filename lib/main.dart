import 'package:flutter/material.dart';

import 'pages/profile.dart';
import 'pages/home.dart';
import 'pages/videos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Humming Sparrow Task',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => Home(),
        '/profile': (_) => Profile(),
        '/videos': (_) => Videos(),
      },
    );
  }
}
