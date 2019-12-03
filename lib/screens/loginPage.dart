import 'package:flutter/material.dart';

import 'todoList.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomPaint(
          painter: ShapesPainter(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ListTile(
                title: Center(
                    child: Text(
                  'The To-Do App',
                  style: TextStyle(fontSize: 30.0),
                )),
                subtitle: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'with ',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'ALARM',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 30.0,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(
                        builder: (context) => ToDoList(),
                      ),
                    );
                  },
//                color: Color.fromRGBO(2, 169, 244, 1),
                  color: Color.fromRGBO(76, 175, 80, 1),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 30.0, letterSpacing: 5.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0))
            ],
          ),
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();
    paint.color = Color.fromRGBO(250, 124, 124, 1);

    var path = new Path();
    path.moveTo(2 * size.width / 3, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 3, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
