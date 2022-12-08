import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void pretendHTTPRequest() {
    print('HTTP Request: Started');
    sleep(Duration(seconds: 8));
    print('HTTP Request: Response => A JSON placeholder');
    print('HTTP Request: Done');
  }

  Future<String> makeAsyncHTTPRequest() async {
    print('HTTP Request: Started');
    return Future.delayed(Duration(seconds: 8), () => 'A JSON placeholder');
  }

  void pretendHTTPRequestAsync() async {
    var response = await makeAsyncHTTPRequest();
    print('HTTP Request: Response: $response');
    print('HTTP Request: Done');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(),
            RaisedButton(
              onPressed: () {
                pretendHTTPRequestAsync();
              },
              child: Text('Pretend HTTP Request'),
            )
          ],
        ),
      ),
    );
  }
}
