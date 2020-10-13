import 'package:flutter/material.dart';
import 'package:habitualize/screens/habitForm.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habitualize')
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // navigate to new habit form
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HabitForm())
          );
        },
      ),
    );
  }
}