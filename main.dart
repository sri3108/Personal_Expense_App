import 'package:flutter/material.dart';
import './widgets/users_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  late String titleInput;
  late String amountInput;

  @override
  Widget build(BuildContext context) {
    var tx;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Colors.blue,
              child: Container(width: double.infinity, child: Text('CHART!')),
              elevation: 5,
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
