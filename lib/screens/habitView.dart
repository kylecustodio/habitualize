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
              Stack(
                alignment: Alignment.center,
                children: [
                  HabitProgress(progress: widget.habit.currentCount / widget.habit.goalCount),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove), 
                        onPressed: () {
                          setState(() {
                            if(widget.habit.currentCount > 0) {
                              widget.habit.currentCount--;
                            }
                          });
                        }
                      ),
                      Text(
                        widget.habit.currentCount.toString(),
                        style: TextStyle(fontSize: 32),
                      ),
                      IconButton(
                        icon: Icon(Icons.add), 
                        onPressed: () {
                          setState(() {
                            widget.habit.currentCount++;
                          });
                        }
                      )
                    ],
                  )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
