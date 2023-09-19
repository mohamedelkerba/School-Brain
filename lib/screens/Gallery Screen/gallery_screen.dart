import 'package:flutter/material.dart';

import '../../constants.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});
  static String routeName = 'GalleryScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const  Text('School Gallery'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: kOtherColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kDefaultPadding),
              topRight: Radius.circular(kDefaultPadding),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width /2,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),

                      ),
                    ),
                    kHalfSizedBox,
                    Container(
                      width: MediaQuery.of(context).size.width /2,
                      height: MediaQuery.of(context).size.height / 6,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),

                      ),
                    ),
                    kHalfSizedBox,
                    Container(
                      width: MediaQuery.of(context).size.width /2,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),

                      ),
                    ),
                    kHalfSizedBox,

                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width /2.5,
                      height: MediaQuery.of(context).size.height / 6,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),

                      ),
                    ),
                    kHalfSizedBox,
                    Container(
                      width: MediaQuery.of(context).size.width /2.5,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),

                      ),
                    ),
                    kHalfSizedBox,
                    Container(
                      width: MediaQuery.of(context).size.width /2.5,
                      height: MediaQuery.of(context).size.height / 6,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),

                      ),
                    ),
                    kHalfSizedBox,
                    Container(
                      width: MediaQuery.of(context).size.width /2.5,
                      height: MediaQuery.of(context).size.height / 6.5,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),

                      ),
                    ),

                  ],
                ),



              ],
            ),
          )));
  }
}


