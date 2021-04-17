import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyStatelessWidget()
  ));
}

class MyStatelessWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateless widget")),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Mycard(
                title: new Text("love flutter",
                  style: new TextStyle(
                  fontSize: 25.0
                )
              ),
              icon: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent),
              ),
              new Mycard(
                title: new Text("I love Dart",
                  style: new TextStyle(
                  fontSize: 25.0
                )
              ),
              icon: new Icon(Icons.language, size: 40.0, color: Colors.blue),
              ),
              new Mycard(
                title: new Text("I love Mobile Application",
                  style: new TextStyle(
                  fontSize: 25.0
                )
              ),
              icon: new Icon(Icons.mobile_friendly, size: 40.0, color: Colors.green),
              )  
          ]
      ))
      );
   }
  }

class Mycard extends StatelessWidget {
  Mycard({this.title, this.icon});
  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(50.0),
        child: new Column(
          children: <Widget>[
            this.title,
            this.icon
          ],
        ),
      ),
      )
    );
  }
}
