class DateCalculator {
  final DateTime _dateTime = DateTime.now();

  String _twoNumber(int day) => day >= 10 ? '$day' : '0$day';

  String getFormattedDateDay() => _twoNumber(_dateTime.day);

  String getDayOfWeek() => _getDayOfWeek(_dateTime.weekday);

  String _getDayOfWeek(int weekday) {
    switch (weekday) {
      case 1:
        return 'MONDAY';
      case 2:
        return 'TUESDAY';
      case 3:
        return 'WEDNESDAY';
      case 4:
        return 'THURSDAY';
      case 5:
        return 'FRIDAY';
      case 6:
        return 'SATURDAY';
      case 7:
        return 'SUNDAY';
      default:
        return 'NONE';
    }
  }

  List<int> getDaysList() {
    int year = _dateTime.year;
    int month = _dateTime.month;
    int day = _dateTime.day;

    if (month < 1 || month > 12) {
      throw ArgumentError(
          'Invalid month: $month. Month should be between 1 and 12.');
    }

    DateTime firstDayOfNextMonth = DateTime(year, month + 1, 1);
    DateTime lastDayOfMonth =
        firstDayOfNextMonth.subtract(const Duration(days: 1));

    int daysInMonth = lastDayOfMonth.day;

    List<int> daysList = List.generate(daysInMonth, (index) => index + 1);

    if (day <= daysInMonth) {
      daysList = daysList.sublist(day - 1);
    } else {
      daysList = [];
    }

    return daysList;
  }
}
