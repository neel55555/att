import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateDrawerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        _createHeader(),
        _createDrawerItem(icon: Icons.ac_unit, text: 'MY APP'),
        _createDrawerItem(icon: Icons.access_alarm, text: 'MY APP'),
        _createDrawerItem(icon: Icons.local_grocery_store, text: 'MY APP'),
        Divider(),
        _createDrawerItem(icon: Icons.system_update_tv, text: 'MY APP'),
      ],
    );
  }
}

Widget _createDrawerItem({IconData icon, String text}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
  );
}

Widget _createHeader() {
  return DrawerHeader(
    //margin: EdgeInsets.zero,
    //padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/drawer-header-background.jpg'),
      ),
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text(
            "Flutter Step-by-Step",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );
}
