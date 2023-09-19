import 'package:brain_school_starter/constants.dart';
import 'package:flutter/material.dart';

import 'Widgets/assignment_widgets.dart';
import 'data/assignment_data.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignments'),
        centerTitle: true,
      ),
      body:
      Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
              ),
              child:
              ListView.builder(
                  itemCount: assignment.length,
                  itemBuilder: (context, int index) {
                    return
                      Container(
                      margin: const EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(kDefaultPadding),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kDefaultPadding),
                              ),
                              color: kOtherColor,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.4),
                                    borderRadius:
                                        BorderRadius.circular(kDefaultPadding),
                                  ),
                                  child: Center(
                                    child: Text(
                                      assignment[index].subject,
                                      style: const TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                kHalfSizedBox,
                                Text(
                                  assignment[index].topicName,
                                  style: const TextStyle(
                                    color: kTextBlackColor,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                kHalfSizedBox,
                                AssignmentDetailRow(
                                  title: 'Assign Date',
                                  statusValue: assignment[index].assignDate,
                                ),
                                kHalfSizedBox,
                                AssignmentDetailRow(
                                  title: 'Last Date',
                                  statusValue: assignment[index].lastDate,
                                ),
                                kHalfSizedBox,
                                AssignmentDetailRow(
                                  title: 'Status',
                                  statusValue: assignment[index].status,
                                ),
                                kHalfSizedBox,
                                if (assignment[index].status == 'Pending')
                                  AssignmentButton(
                                    title: 'To be Submitted',
                                    onPress: () {},
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
