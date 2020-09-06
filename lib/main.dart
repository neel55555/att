import 'package:flutter/material.dart';

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
          drawer: Drawer(),
          appBar: AppBar(title: Text('MyApp')),
          body: Text(''),
        ));
  }
}
