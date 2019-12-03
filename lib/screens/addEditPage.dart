import 'package:flutter/material.dart';

class AddEditPage extends StatefulWidget {
  final String title;
  AddEditPage({this.title});

  @override
  _AddEditPageState createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(76, 175, 80, 1),
        title: Text(widget.title),
        centerTitle: false,
        actions: <Widget>[
          Center(child: Text('OFF')),
          Switch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            },
            activeTrackColor: Color.fromRGBO(200, 230, 201, 1),
            activeColor: Colors.green[900],
          ),
          Center(child: Text('ON')),
          SizedBox(
            width: 15.0,
          )
        ],
      ),
    );
  }
}
