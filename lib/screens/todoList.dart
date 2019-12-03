import 'package:flutter/material.dart';

import 'addEditPage.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(76, 175, 80, 1),
      appBar: AppBar(
        title: Text('The List'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(76, 175, 80, 1),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40.0),
          ),
          color: Colors.white,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              child: ListOne(),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              child: ListTwo(),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => AddEditPage(title: 'Add')));
        },
        backgroundColor: Color.fromRGBO(2, 169, 244, 1),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget ListOne() {
    return Container(
      color: Colors.pink,
    );
  }

  Widget ListTwo() {
    return Container(
      color: Colors.cyanAccent,
    );
  }
}
