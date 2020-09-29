import 'package:att/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      drawer: Drawer(
        child: CreateDrawer(),
      ),
      body: Text('HOME')
    );
  }
}