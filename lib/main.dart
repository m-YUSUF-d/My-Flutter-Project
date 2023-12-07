import 'package:flutter/material.dart';

void main() {
  runApp(stateLess());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'My Flutter App',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: ElevatedButton(
            child: Text(
              'Press',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              var alert = AlertDialog(
                title: Text('Show the result'),
                content: Text('Passed !'),
              );

              showDialog(
                  context: context, builder: (BuildContext context) => alert);
            },
          ),
        ),
      ),
    );
  }
}

class IAmPoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          centerTitle: true,
          title: Text(
            'I Am Poor',
            style: TextStyle(color: Colors.yellow),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('Images/Coal.png'),
          ),
        ),
      ),
    );
  }
}

class stateLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
        ),
      ),
    );
  }
}
