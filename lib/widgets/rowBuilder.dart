import 'package:flutter/material.dart';
import 'package:habitualize/models/habit.dart';
import 'package:habitualize/screens/habitView.dart';
import 'package:habitualize/widgets/habitProgress.dart';

class RowBuilder extends StatefulWidget {
  final Habit habit;

  RowBuilder({Key key, this.habit}) : super(key: key);

  @override
  _RowBuilderState createState() => _RowBuilderState();
}

class _RowBuilderState extends State<RowBuilder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HabitView(habit: widget.habit)));
        },
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            HabitProgress(
              progress: widget.habit.isDone ? 1.0 : 0.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(widget.habit.name,
                  style: Theme.of(context).textTheme.headline5),
            ),
          ],
        ),
      ),
    );
  }
}
