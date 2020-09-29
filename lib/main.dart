import 'package:att/screens/attendance.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'screens/devices.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.purple,
        splashColor: Colors.purple,
        dialogTheme: DialogTheme(),
      ),
      title: 'MyApp',

      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/devices': (context) => Devices(),
        '/attendance': (context) => Attendance(),
      },
    );
  }
}
