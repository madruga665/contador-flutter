import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void increment() {
    setState(() {
      count += 1;
    });
  }

  void decrement() {
    setState(() {
      count -= 1;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Fucking App"),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CONTADOR\n$count",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, color: Colors.purple),
          ),
          TextButton(
              onPressed: () {
                decrement();
              },
              child: Text('Decrement')),
          TextButton(
              onPressed: () {
                increment();
              },
              child: Text('Increment')),
          TextButton(
              onPressed: () {
                reset();
              },
              child: Text('Reset'))
        ],
      )),
    );
  }
}
