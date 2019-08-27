import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = "艺是发票助手";

    return new MaterialApp(
      title: appName,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('艺是发票'),
        ),
        body: new Center(
            child: Container(
          constraints: new BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,
                spreadRadius: 8.0,
                offset: Offset(-1.0, 1.0),
              )
            ],
            border: new Border.all(color: Colors.grey, width: 8.0),
            borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
          ),
          child: Text(
            'tex',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 28.0),
          ),
        )),
      ),
    );
  }
}
