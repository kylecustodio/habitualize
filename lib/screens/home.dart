import 'package:flutter/material.dart';
import 'package:habitualize/models/habit.dart';
import 'package:habitualize/screens/habitForm.dart';
import 'package:habitualize/widgets/rowBuilder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Habit> _habits = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text('Habits', style: TextStyle(fontSize: 32))),
          SizedBox(height: 20),
          _habits.length == 0
              ? Text('Add a habit')
              : Expanded(
                  child: ListView.builder(
                    itemCount: _habits.length,
                    itemBuilder: (context, index) =>
                        RowBuilder(habit: _habits[index]),
                  ),
                )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text('Add Habit'),
        elevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        onPressed: () async {
          // navigate to new habit form
          // returns new habit
          Habit newHabit = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => HabitForm()));
          setState(() {
            _habits.add(newHabit);
          });
        },
      ),
    );
  }
}
