import 'package:flutter/material.dart';
import 'drawer.dart';
import 'screens/devices.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      title: 'MyApp',
      initialRoute: '/',
      routes: {
        '/': (context) => Root(),
        '/devices': (context) => Devices(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY APP'),
        ),
        drawer: Drawer(
          child: CreateDrawer(),
        ),
        body: Text('MY APP'),
        
      ),
    );
  }
}
