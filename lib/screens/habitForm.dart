import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habitualize/models/habit.dart';

class HabitForm extends StatefulWidget {
  @override
  _HabitFormState createState() => _HabitFormState();
}

class _HabitFormState extends State<HabitForm> {
  final _formKey = GlobalKey<FormState>();

  String _habitName;
  // HabitType _habitType = HabitType.buildHabit;
  // GoalType _goalType = GoalType.simple;
  // int _goalNum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Center(child: Text('New Habit', style: TextStyle(fontSize: 32))),
            SizedBox(height: 20),
            Center(child: Text('Name', style: TextStyle(fontSize: 16))),
            SizedBox(height: 10),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  onChanged: (text) => _habitName = text,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Cannot be empty';
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // SizedBox(height: 20),
            // Center(child: Text('Habit Type', style: TextStyle(fontSize: 16))),
            // ButtonBar(
            //   alignment: MainAxisAlignment.center,
            //   children: [
            //     FlatButton(
            //       onPressed: () =>
            //           setState(() => _habitType = HabitType.buildHabit),
            //       child: Text('Build'),
            //       color: _habitType == HabitType.buildHabit
            //           ? Colors.teal[100]
            //           : Colors.transparent,
            //       textColor: Colors.black,
            //       hoverColor: Colors.teal[100],
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8)),
            //     ),
            //     FlatButton(
            //       onPressed: () =>
            //           setState(() => _habitType = HabitType.breakHabit),
            //       child: Text('Break'),
            //       color: _habitType == HabitType.breakHabit
            //           ? Colors.red[100]
            //           : Colors.transparent,
            //       textColor: Colors.black,
            //       hoverColor: Colors.red[100],
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8)),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 20),
            // Center(child: Text('Goal Type', style: TextStyle(fontSize: 16))),
            // ButtonBar(
            //   alignment: MainAxisAlignment.center,
            //   children: [
            //     FlatButton(
            //       onPressed: () => setState(() => _goalType = GoalType.simple),
            //       child: Text('Simple'),
            //       color: _goalType == GoalType.simple
            //           ? Colors.teal[100]
            //           : Colors.transparent,
            //       textColor: Colors.black,
            //       hoverColor: Colors.teal[100],
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8)),
            //     ),
            //     FlatButton(
            //       onPressed: () => setState(() => _goalType = GoalType.counter),
            //       child: Text('Counter'),
            //       color: _goalType == GoalType.counter
            //           ? Colors.teal[100]
            //           : Colors.transparent,
            //       textColor: Colors.black,
            //       hoverColor: Colors.teal[100],
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8)),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 20),
            // Visibility(
            //   visible: _goalType == GoalType.counter,
            //   child: Column(
            //     children: [
            //       Text('Goal', style: TextStyle(fontSize: 16)),
            //       SizedBox(height: 10),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Container(
            //             width: MediaQuery.of(context).size.width * 0.15,
            //             child: TextFormField(
            //               onChanged: (text) => _goalNum = int.parse(text),
            //               textAlign: TextAlign.center,
            //               keyboardType: TextInputType.number,
            //               inputFormatters: <TextInputFormatter>[
            //                 FilteringTextInputFormatter.digitsOnly
            //               ],
            //             ),
            //           ),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Text('times', style: TextStyle(fontSize: 14)),
            //         ],
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.check),
        label: Text('Add Habit'),
        elevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        onPressed: () {
          // submit Habit Form
          if (_formKey.currentState.validate()) {
            // Save Habit
            Navigator.of(context).pop(Habit(
              name: _habitName,
              // habitType: _habitType,
              // goalType: _goalType,
              // goalNum: _goalType == GoalType.counter ? _goalNum : 1,
            ));
          }
        },
      ),
    );
  }
}
