import 'package:flutter/material.dart';
import 'package:inter_clone/shared/app_text_style.dart';
import 'package:inter_clone/shared/app_theme_data.dart';

class LargeIconButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const LargeIconButton(this.text, this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        child: SizedBox(
          height: 113,
          width: 117,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  flex: 5,
                  child: Icon(icon, size: 35, color: AppThemeData.mainColor)),
              Expanded(
                  flex: 1,
                  child: Text(text,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.LARGE_BUTTON_TEXT))
            ],
          ),
        ));
  }
}
