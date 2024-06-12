import 'package:flutter/material.dart';
import 'package:messanger_app/src/core/resources/app_colors.dart';

import '../resources/gilroy_text.dart';

class CircleAvatarWithText extends StatelessWidget {
  final String text;

  const CircleAvatarWithText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF1FDB5F),
            Color(0xFF31C764),
          ],
        ),
      ),
      child: Center(
        child: GillroyText(
        text, 
        20, 
        AppColors.whiteColor, 
        FontWeight.w700 

        )
      ),
    );
  }
}