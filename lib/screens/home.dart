import 'package:flutter/material.dart';
import 'package:habitualize/models/habit.dart';
import 'package:habitualize/screens/habitForm.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _habits = List<Habit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habitualize')
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          // navigate to new habit form
          Habit newHabit = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HabitForm())
          );
          _habits.add(newHabit);
        },
      ),
    );
  }
}