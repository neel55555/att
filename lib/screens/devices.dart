import 'package:att/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Devices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MY APPBAR'),
      ),
      drawer: Drawer(
        child: CreateDrawer(),
      ),
      body: Text('MY DEVICES'),
    );
  }
}
