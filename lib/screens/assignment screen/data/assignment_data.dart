class AssigmentData{
  final String subject;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssigmentData(this.subject, this.topicName, this.assignDate, this.lastDate,
      this.status);
}

List  <AssigmentData> assignment =[
  AssigmentData('Biology', 'RedBloodCells', '8 Aug 2021', '12 Aug 2021', 'Pending'),
  AssigmentData('Physics', 'bohr Theory', ' 5 Jul 2021', '9 Jul 2021', 'Submitted'),
  AssigmentData('Chemistry', 'Organic Chemistry', '16 Nov 2021', '22 Nov 2021', 'Submitted'),
  AssigmentData('Mathematics', 'Linear Algebra', '8 Aug 2021', '13 Aug 2021', 'Pending'),

];