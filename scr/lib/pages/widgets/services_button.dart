import 'package:flutter/material.dart';
import 'package:inter_clone/shared/app_text_style.dart';

class ServicesButton extends StatelessWidget {
  ImageProvider<Object> image;
  String text;
  double? height;
  double? width;

  final double _paddingValue = 8.0;
  final double _imageHeight = 90.0;

  ServicesButton(this.image, this.text, {Key? key, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
          onPressed: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(_paddingValue),
                child: Image(image: image, height: _imageHeight),
              ),
              const Divider(height: 10),
              Padding(
                padding: EdgeInsets.all(_paddingValue),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(text,
                        style: AppTextStyle.SERVICE_BUTTON_DESCRIPTION_TEXT)),
              )
            ],
          )),
    );
  }
}
