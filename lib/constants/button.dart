import 'package:flutter/material.dart';
import 'package:office_app1/constants/constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;
  const DefaultButton({super.key, required this.onPress, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin:EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        padding: EdgeInsets.only(right: kDefaultPadding),

        width: 20.0,
        height: 30.0,
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors:[btnColor] ,
            begin: const FractionalOffset(0.0, 0.0),
            end : const FractionalOffset(0.5, 0.0),
            stops: [0.0,1.0],
            tileMode:TileMode.clamp,

          ) ,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(title,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
            Spacer(),

          ],
        ),
      ),
    );
  }
}