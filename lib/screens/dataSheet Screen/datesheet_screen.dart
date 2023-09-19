import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/screens/dataSheet%20Screen/data/datesheet_data.dart';
import 'package:flutter/material.dart';
class DateSheetScreen extends StatelessWidget {
  const DateSheetScreen({super.key});
  static String routeName = 'DateSheetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Sheet'),
        centerTitle: true,
      ),
      body:
      Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(

              color: kOtherColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kDefaultPadding),
            topRight: Radius.circular(kDefaultPadding),
          )
        ),
        child: ListView.builder(
            itemCount: dateSheet.length,
            itemBuilder: (context,index){
          return Container(

            margin: const EdgeInsets.only(left: kDefaultPadding/2,
            right: kDefaultPadding/2,
            ),
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: kDefaultPadding,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(dateSheet[index].date.toString(),
                        style: const TextStyle(
                          color: kTextBlackColor,
                          fontSize: 26,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text(dateSheet[index].monthName,
                          style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(dateSheet[index].subjectName,
                          style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(dateSheet[index].dayName,
                          style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,                              children: [
                        Text(
                          '⏱️${dateSheet[index].time}',
                          style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),



                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding,
                  child: Divider(
                    thickness: 1,
                  ),
                ),

              ],
            ),
          );
        })
      ),
    );
  }
}
