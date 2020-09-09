import 'package:flutter/material.dart';
import 'drawer-item.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY APP'),
        ),
        drawer: Drawer(
          child: CreateDrawerItem(),
        ),
        body: Text('MY APP')
      ),
    );
  }
}
