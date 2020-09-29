import 'package:att/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ATTENDANCE'),
      ),
      drawer: Drawer(
        child: CreateDrawer(),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Material(
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.blueAccent),
                  color: Colors.white10,
                ),
                child: ListView(
                  children: [
                    DropdownButton(
                      value: 1,
                      onChanged: (value) => {},
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: Text('ACCOUNTS'),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/male1.jpg')),
                      title: Text('John Doe'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 17,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        child: Text('DATE FROM'),
                        onPressed: () => {},
                      ),
                      RaisedButton(
                        color: Colors.white,
                        child: Text('DATE TO'),
                        onPressed: () => {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025),
                          )
                        },
                      )
                    ],
                  ),
                ),
                DataTable(
                  columns: [
                    DataColumn(label: Text('NAME')),
                    DataColumn(label: Text('DEPARTMENT')),
                    DataColumn(label: Text('IN TIME')),
                    DataColumn(label: Text('OUT TIME')),
                    DataColumn(label: Text('STATUS')),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('JOHN DOE')),
                        DataCell(Text('ACCOUNTS')),
                        DataCell(Text('09:52:55')),
                        DataCell(Text('06:30:23')),
                        DataCell(Text('PRESENT')),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
