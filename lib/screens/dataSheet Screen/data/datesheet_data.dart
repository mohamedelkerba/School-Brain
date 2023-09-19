class DateSheetData{
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DateSheetData(this.date, this.monthName, this.subjectName, this.dayName,
      this.time);
}

List  <DateSheetData> dateSheet =[
  DateSheetData( 11 , 'Aug', 'Computer Science', 'Monday', '9:00am'),
  DateSheetData( 25, 'Aug', 'Physics',  'Wednesday', '11:00am'),
  DateSheetData(3, 'Aug', 'Programming', 'Friday', '11:00am'),
  DateSheetData(5, 'Aug', 'Programming', 'Friday', '11:00am'),
  DateSheetData(6, 'Aug', 'Programming', 'Friday', '11:00am'),
  DateSheetData(7, 'Aug', 'Programming', 'Friday', '11:00am'),

];