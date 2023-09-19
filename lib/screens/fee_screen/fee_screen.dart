import 'package:brain_school_starter/constants.dart';
import 'package:flutter/material.dart';

import 'Widgets/fee_widgets.dart';
import 'data/fee_data.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fee'),
      ),
      body: Column(
        children: [
          Expanded(
              child:
              Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding),
                topRight: Radius.circular(kDefaultPadding),
              ),
              color: kOtherColor,
            ),
            child:
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(kDefaultPadding),
                itemCount: fee.length,
                itemBuilder: (context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: kDefaultPadding),
                    child: Column(
                      children: [
                        Container(
                          padding:const EdgeInsets.all(kDefaultPadding),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(kDefaultPadding),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kTextLightColor,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child:
                          Column(
                            children: [
                              FeeDetailRow(
                                title: 'Receipt No',
                                statusValue: fee[index].receiptNo,),
                              const SizedBox(
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailRow(
                                title: 'Month',
                                statusValue: fee[index].month,),
                              sizedBox,
                              FeeDetailRow(
                                title: 'Payment Date',
                                statusValue: fee[index].date,),
                              sizedBox,
                              FeeDetailRow(
                                title: 'Status',
                                statusValue: fee[index].paymentStatus,),
                              sizedBox,
                              const SizedBox(
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailRow(
                                title: 'Total Amount',
                                statusValue: fee[index].totalAmount,),
                            ],
                          ),
                        ),
                        FeeButton(
                          title: fee[index].btnStatus,
                          iconData: fee[index].paymentStatus == 'Paid'
                              ?Icons.download_outlined : Icons.arrow_right_alt,
                          onPress: (){},

                        )                      ],
                    ),
                  );
                }),
          )
          )
        ],
      ),
    );
  }
}
