import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter&Text',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  double fontSize = 50;

  Color _textColor(int count) {
    if (count > 0) {
      return Colors.green;
    } else if (count == 0) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  void _incrementFontSize() {
    setState(() {
      fontSize += 2;
    });
  }

  void _decrementFontSize() {
    setState(() {
      fontSize -= 2;
    });
  }

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter and Font Exercise'),
        actions: [
          IconButton(
            onPressed: _incrementFontSize,
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: _decrementFontSize,
            icon: Icon(Icons.remove),
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter',
              style: TextStyle(
                fontSize: 40,
                color: Colors.teal,
              ),
            ),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: fontSize,
                color: _textColor(counter),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add),
                  backgroundColor: Colors.teal,
                ),
                SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.teal,
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
