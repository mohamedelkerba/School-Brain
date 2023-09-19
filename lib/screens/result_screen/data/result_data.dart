class ResultData{
  final String subject;
  final int totalMarks;
  final int obtainedMarks;
  final String grade;

  ResultData(this.subject, this.totalMarks, this.obtainedMarks, this.grade,
      );
}

List  <ResultData> result =[
  ResultData('Biology',100, 98, 'A'),
  ResultData('Physics', 100, 50, 'D'),
  ResultData('Chemistry', 100, 85, 'B'),
  ResultData('Electronics',100, 100, 'A'),
  ResultData('Introduction ',100, 90, 'A'),
  ResultData('Math 1',100, 80, 'A'),
  ResultData('Math 0',100, 60, 'D'),
  ResultData('Discrete Mathematics',100, 77, 'A'),
  ResultData('Math 2',100, 20, 'D'),

];