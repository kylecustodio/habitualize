enum HabitType {
  buildHabit,
  breakHabit
}

enum GoalType {
  simple,
  counter,
}

class Habit {
  String name;
  HabitType habitType;
  GoalType goalType;
  int goalNum;

  Habit({this.name, this.habitType, this.goalType, this.goalNum});
}
