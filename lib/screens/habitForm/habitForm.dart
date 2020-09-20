import 'package:flutter/material.dart';

class HabitForm extends StatefulWidget {
  @override
  _HabitFormState createState() => _HabitFormState();
}

class _HabitFormState extends State<HabitForm> {
  final _formKey = GlobalKey<FormState>();
  bool _startHabit = true;
  String _occurence = 'day';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Habit'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Text('I want to', style: Theme.of(context).textTheme.headline5),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () => setState(() => _startHabit = true),
                  child: Text('Start'),
                  color: _startHabit ? Colors.teal[100] : Colors.transparent,
                  textColor: Colors.black,
                  hoverColor: Colors.teal[100],
                ),
                FlatButton(
                  onPressed: () => setState(() => _startHabit = false),
                  child: Text('Stop'),
                  color: _startHabit ? Colors.transparent : Colors.red[100],
                  textColor: Colors.black,
                  hoverColor: Colors.red[100],
                ),
              ],
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Cannot be empty';
                }
                return null;
              },
            ),
            Visibility(
              visible: _startHabit,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('every', style: Theme.of(context).textTheme.headline5),
                  Container(width: 20, color: Colors.transparent),
                  DropdownButton(
                    value: _occurence,
                    items: <String>['day', 'other day', 'week']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        _occurence = newValue;
                      });
                    },
                    elevation: 0,
                  ),
                ],
              ),
            ),
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
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }
}
