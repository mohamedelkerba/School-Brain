class TimeData{
  final String subjectName;
  final String time;
  final String lecturer;
  final String period;


  TimeData(this.subjectName, this.time, this.lecturer, this.period );
}

List  <TimeData> time =[
  TimeData('Computer Science', '8:10am-9:10am', 'Dr-Arabi Keshk', 'Period 1'),
  TimeData('Mathematics ', '9:15am-10:15am', 'Dr-Ahmed Kafafy', 'Period 2'),
  TimeData(' English', '10:20am-11:30am', 'Dr-Mohi Hadhoud', 'Period 3'),
  TimeData(' Break', '10:20am-11:30am', '', ''),
  TimeData('Science', '11:40am-12:50am', 'Dr-Amira', 'Period 4'),
  TimeData('Social Study', '1:00am-2:00am', 'Dr-Osama', 'Period 5'),


];