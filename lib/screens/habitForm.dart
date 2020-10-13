import 'package:flutter/material.dart';

class HabitForm extends StatefulWidget {
  @override
  _HabitFormState createState() => _HabitFormState();
}

class _HabitFormState extends State<HabitForm> {
  final _formKey = GlobalKey<FormState>();
  bool _buildHabit = true;
  bool _simpleGoal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Text('New Habit', style: TextStyle(fontSize: 32)),
            SizedBox(height: 20),
            Text('Name', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Cannot be empty';
                  }
                  return null;
                },
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Text('Habit Type', style: TextStyle(fontSize: 16)),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () => setState(() => _buildHabit = true),
                  child: Text('Build'),
                  color: _buildHabit ? Colors.teal[100] : Colors.transparent,
                  textColor: Colors.black,
                  hoverColor: Colors.teal[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
                FlatButton(
                  onPressed: () => setState(() => _buildHabit = false),
                  child: Text('Break'),
                  color: _buildHabit ? Colors.transparent : Colors.red[100],
                  textColor: Colors.black,
                  hoverColor: Colors.red[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Goal Type', style: TextStyle(fontSize: 16)),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () => setState(() => _simpleGoal = true),
                  child: Text('Simple'),
                  color: _simpleGoal ? Colors.teal[100] : Colors.transparent,
                  textColor: Colors.black,
                  hoverColor: Colors.teal[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
                FlatButton(
                  onPressed: () => setState(() => _simpleGoal = false),
                  child: Text('Counter'),
                  color: _simpleGoal ? Colors.transparent : Colors.teal[100],
                  textColor: Colors.black,
                  hoverColor: Colors.teal[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Visibility(
              visible: !_simpleGoal,
              child: Column(
                children: [
                  Text('Goal', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('times', style: TextStyle(fontSize: 14)),
                    ],
                  )
                ],
              ),
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
            Navigator.of(context).pop();
          }
        },
      ),
    );
  }
}
