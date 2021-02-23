import 'package:flutter/material.dart';
import 'package:habitualize/models/habit.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: LinearProgressIndicator(
                value: 0.7,
                backgroundColor: Colors.grey[200],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              widget.habit.name,
              style: Theme.of(context).textTheme.headline5
            ),
          ),
        ],
      ),
    );
  }
}