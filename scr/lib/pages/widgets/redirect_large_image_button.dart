import 'package:flutter/material.dart';
import 'package:inter_clone/shared/app_text_style.dart';
import 'package:inter_clone/shared/app_theme_data.dart';

class RedirectLargeImageButton extends StatelessWidget {
  ImageProvider? image;
  IconData? icon;
  String title;
  String description;

  RedirectLargeImageButton(this.title, this.description, {Key? key, this.image, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: OutlinedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                image == null ? Icon(icon, size: 30, color: AppThemeData.mainColor) : Image(image: image!, fit: BoxFit.fill),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style:
                                    AppTextStyle.REIDIRECT_LARGE_BUTTON_TITLE)),
                        Expanded(
                            flex: 2,
                            child: Text(description,
                            style: TextStyle(color: Colors.grey.shade600),
                                overflow: TextOverflow.visible, maxLines: 2))
                      ]),
                ),
                const Icon(Icons.chevron_right_rounded,
                    color: AppThemeData.mainColor)
              ],
            ),
          )),
    );
  }
}
