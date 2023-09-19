import 'package:flutter/material.dart';
import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress ;
  final String title ;
  final IconData iconData ;


  const DefaultButton({super.key, required this.onPress, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,

          ),
          padding: const EdgeInsets.only(right:kDefaultPadding ),
          width: double.infinity,
          height: 68,
          decoration: BoxDecoration(
            color: const Color(0xFF00a400),
              borderRadius:
              BorderRadius.circular(kDefaultPadding)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer() ,
              Text(title,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const Spacer() ,
              Icon(iconData,
                size: 30,
                color: Colors.white,
              )
            ],
          ),
        ),
      );
    }
  }

