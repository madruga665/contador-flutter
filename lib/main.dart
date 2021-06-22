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
    String counterText = "Contador";
    return Scaffold(
      appBar: AppBar(
        title: Text("Super Contador"),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            counterText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, color: Colors.purple),
          ),
          Text("$count",
              style: TextStyle(
                  fontSize: 40, color: count < 0 ? Colors.red : Colors.purple)),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.purple, primary: Colors.white),
                    onPressed: () {
                      decrement();
                    },
                    child: Text('-')),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.purple, primary: Colors.white),
                    onPressed: () {
                      reset();
                    },
                    child: Text('Reset')),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.purple, primary: Colors.white),
                    onPressed: () {
                      increment();
                    },
                    child: Text('+')),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
