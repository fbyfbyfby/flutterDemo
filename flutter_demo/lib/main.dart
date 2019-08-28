import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/util/ScreenUtils.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = "艺是发票助手";
    const name1 = '艺是网络科技有限公司';
    const num1 = '91330901MA28K4AA3H';
    const name2 = '杭州艺事网络科技有限公司';
    const num2 = '91330102MA2804C80K';
    var w = ScreenUtils.screenW(context);
    var h = ScreenUtils.screenH(context);
    return new MaterialApp(
      title: appName,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('艺是发票'),
        ),
        body: new Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              height: 0.35 * h,
              width: 0.8 * w,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                    spreadRadius: 4.0,
                    offset: Offset(-1.0, 1.0),
                  )
                ],
                borderRadius:
                    const BorderRadius.all(const Radius.circular(8.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    name1,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPressed: () {
                      Clipboard.setData(new ClipboardData(text: name1));
                      Fluttertoast.showToast(
                          msg: "抬头已复制",
                          gravity: ToastGravity.CENTER,
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIos: 1,
                          backgroundColor: Colors.black12,
                          fontSize: 16.0,
                          textColor: Colors.black);
                    },
                    child: new Text(
                      "复制抬头",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Text(
                    num1,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPressed: () {
                      Clipboard.setData(new ClipboardData(text: num1));
                      Fluttertoast.showToast(
                          msg: "税号已复制",
                          gravity: ToastGravity.CENTER,
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIos: 1,
                          backgroundColor: Colors.black12,
                          fontSize: 16.0,
                          textColor: Colors.black);
                    },
                    child: new Text(
                      "复制税号",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              height: 0.35 * h,
              width: 0.8 * w,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0,
                    spreadRadius: 4.0,
                    offset: Offset(-1.0, 1.0),
                  )
                ],
                borderRadius:
                    const BorderRadius.all(const Radius.circular(8.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    name2,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  MaterialButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPressed: () {
                      Clipboard.setData(new ClipboardData(text: name2));
                      Fluttertoast.showToast(
                          msg: "抬头已复制",
                          gravity: ToastGravity.CENTER,
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIos: 1,
                          backgroundColor: Colors.black12,
                          fontSize: 16.0,
                          textColor: Colors.black);
                    },
                    child: new Text(
                      "复制抬头",
                      style: TextStyle(fontSize: 20, color: Colors.amber),
                    ),
                  ),
                  Text(
                    num2,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  MaterialButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPressed: () {
                      Clipboard.setData(new ClipboardData(text: num2));
                      Fluttertoast.showToast(
                          msg: "税号已复制",
                          gravity: ToastGravity.CENTER,
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIos: 1,
                          backgroundColor: Colors.black12,
                          fontSize: 16.0,
                          textColor: Colors.black);
                    },
                    child: new Text(
                      "复制税号",
                      style: TextStyle(fontSize: 20, color: Colors.amber),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
