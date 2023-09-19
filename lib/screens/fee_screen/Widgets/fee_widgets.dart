import 'package:flutter/material.dart';
import '../../../constants.dart';

class FeeButton extends StatelessWidget {
  const FeeButton({super.key, required this.title, required this.iconData, required this.onPress});
  final String title;
  final IconData iconData;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [kSecondaryColor,kPrimaryColor],
              begin: FractionalOffset(0, 0),
              end: FractionalOffset(0.5, 0),
              stops: [0.0,1],
              tileMode: TileMode.clamp,


            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(kDefaultPadding),
              bottomRight: Radius.circular(kDefaultPadding),
            )
        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(title,style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16.0
            ),),
            Icon(iconData,
              color: kOtherColor,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}


class FeeDetailRow extends StatelessWidget {
  const FeeDetailRow({super.key, required this.title, required this.statusValue});
  final String title;
  final String statusValue;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
          !.copyWith(
            fontSize: 14.0,
            color: kTextLightColor,
          ),
        ),
        Text(
          statusValue,
          style: Theme.of(context)
              .textTheme
              .subtitle2
          !.copyWith(
              fontSize: 14.0,
              color: kTextBlackColor,
              fontWeight: FontWeight.w600
          ),),
      ],
    );
  }
}
