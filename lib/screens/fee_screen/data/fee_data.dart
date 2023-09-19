class FeeData{
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List  <FeeData> fee =[
  FeeData('2033699', 'August', '8 Aug 2021', 'Pending', '980\$', 'PAY NOW'),
  FeeData('2033999', 'July', ' 5 Jul 2021', 'Paid', '400\$', 'DOWNLOAD'),
  FeeData('2033629', 'November', '16 Nov 2021', 'Paid', '1060\$', 'DOWNLOAD'),

];