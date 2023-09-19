class AttendanceData{
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  AttendanceData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List  <AttendanceData> attendance =[
  AttendanceData('Status', 'Attended', 'Attended', 'Absent', 'Absent', 'Attended'),
  AttendanceData('Status', 'Attended', 'Attended', 'Absent', 'Absent', 'Attended'),
  AttendanceData('Status', 'Absent', 'Attended', 'Absent', 'Absent', 'Attended'),

];