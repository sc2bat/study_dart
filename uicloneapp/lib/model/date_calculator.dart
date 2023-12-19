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
}
