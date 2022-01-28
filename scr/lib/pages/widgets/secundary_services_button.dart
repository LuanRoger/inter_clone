import 'package:flutter/material.dart';
import 'package:inter_clone/shared/app_text_style.dart';
import 'package:inter_clone/shared/app_theme_data.dart';

class SecundaryServiceButton extends StatelessWidget {
  IconData icon;
  String text;

  SecundaryServiceButton(this.icon, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  decoration: const BoxDecoration(
                      color: AppThemeData.mainColorTransparent),
                  width: 50,
                  height: 50,
                  child: Icon(icon, color: AppThemeData.mainColor),
                )),
            Text(text, style: AppTextStyle.LARGE_BUTTON_TEXT)
          ],
        ),
        style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
          side: MaterialStateProperty.all(const BorderSide(color: Colors.transparent)),
              padding: MaterialStateProperty.all(const EdgeInsets.all(20))
            ));
  }
}
