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
  int _goalCount;

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
            SizedBox(height: 20),
            Column(
              children: [
                Text('Goal', style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: TextFormField(
                        onChanged: (text) => _goalCount = int.parse(text),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Cannot be empty';
                          }
                          return null;
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('times', style: TextStyle(fontSize: 14)),
                  ],
                )
              ],
            )
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
              goalCount: _goalCount,
            ));
          }
        },
      ),
    );
  }
}
