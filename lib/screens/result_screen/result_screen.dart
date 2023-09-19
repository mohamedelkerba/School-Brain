import 'package:brain_school_starter/screens/result_screen/components/result_components.dart';
import 'package:brain_school_starter/screens/result_screen/data/result_data.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import '../../constants.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  static String routeName = 'ResultScreen';

  @override
  Widget build(BuildContext context) {
int oMarks =result.map((e) => e.obtainedMarks).sum.toInt();
int tMarks =result.map((e) => e.totalMarks).sum.toInt();

    return Scaffold(
        appBar: AppBar(
         title: const Text('Results'),
          centerTitle: true,
   ),
      body: Column(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.all(13),
            child: CustomPaint(
              foregroundPainter: CircularPainter(
                backGroundColor: kPrimaryColor,
                lineColor: kOtherColor,
                width: 15,),
              child: Center(
                  child: Text(
                    oMarks.toString() +'\n / \n' +tMarks.toString(),
                  style: Theme.of(context).textTheme.subtitle1,
                  ),
              ),
            ),
          ),
          Text(' You are excellent', style: Theme.of(context).textTheme.subtitle2!.copyWith(
            fontWeight: FontWeight.w400,

          ),),
          Text(' Aisha!!',
              style: Theme.of(context).textTheme.subtitle1!),
          sizedBox,
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding),
                    topRight: Radius.circular(kDefaultPadding),
                  )
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(kDefaultPadding),
                  itemCount: result.length,
                  itemBuilder: (context,index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: kDefaultPadding),
                  padding: const EdgeInsets.all(kDefaultPadding/2),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(kDefaultPadding),
                    boxShadow: const [BoxShadow(
                      color: kTextLightColor,
                      blurRadius: 2.0
                    ),
                    ],
                        ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(result[index].subject,
                            textAlign:TextAlign.start ,
                          style: Theme.of(context).textTheme.subtitle2,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${result[index].obtainedMarks.toString() } / ${result[index].totalMarks.toString() }',
                                style: Theme.of(context).textTheme.subtitle2,

                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: result[index].totalMarks.toDouble(),
                                    height: 12,
                                    decoration: BoxDecoration(

                                      color: Colors.grey[700],
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(kDefaultPadding),
                                        bottomRight: Radius.circular(kDefaultPadding),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 12,
                                      width: result[index].obtainedMarks.toDouble(),
                                      decoration: BoxDecoration(

                                        color: result[index].grade == 'D' ?kErrorBorderColor:kOtherColor,
                                        borderRadius: const BorderRadius.only(

                                          topLeft: Radius.circular(kDefaultPadding),
                                          bottomRight: Radius.circular(kDefaultPadding),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              Text(result[index].grade,
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontWeight: FontWeight.w900
                                ),)
                            ],
                          )
                        ],
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
