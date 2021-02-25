import 'package:flutter/material.dart';

class HabitProgress extends StatefulWidget {
  final double progress;

  HabitProgress({Key key, this.progress}) : super(key: key);

  @override
  _HabitProgressState createState() => _HabitProgressState();
}

class _HabitProgressState extends State<HabitProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: LinearProgressIndicator(
          value: widget.progress,
          backgroundColor: Colors.grey[200],
        ),
      ),
    );
  }
}
