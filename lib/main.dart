import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trello Test App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final String _title = 'Kanban';

  final double _elementHeight = 48.0;
  final double _elementRadius = 30.0;

  final double _firstSizeBoxHeight = 17.0;
  final double _secondSizeBoxHeight = 42.0;

  final double _topPadding = 53.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, _topPadding, 30.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: _elementHeight,
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    height: .5,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(_elementRadius),
                    ),
                  ),
                  hintText: 'Enter your username',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: _firstSizeBoxHeight),
            Container(
              height: _elementHeight,
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    height: .5,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                       Radius.circular(_elementRadius),
                    ),
                  ),
                  hintText: 'Enter your password',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: _secondSizeBoxHeight),
            ElevatedButton(
              onPressed: () {},
              child: Text('Log in'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(0.0, _elementHeight),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(_elementRadius),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
