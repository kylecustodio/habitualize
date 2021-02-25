import 'package:flutter/material.dart';
import 'package:habitualize/models/habit.dart';
import 'package:habitualize/widgets/habitProgress.dart';

class HabitView extends StatefulWidget {
  final Habit habit;

  HabitView({Key key, this.habit}) : super(key: key);

  @override
  _HabitViewState createState() => _HabitViewState();
}

class _HabitViewState extends State<HabitView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            children: [
              Text(
                widget.habit.name,
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 20),
              
              // SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     Column(
              //       children: [Text('Current Streak'), Text('5')],
              //     ),
              //     Column(
              //       children: [Text('Longest Streak'), Text('5')],
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
