import 'package:flutter/material.dart';
import 'package:inter_clone/shared/app_text_style.dart';

class DebitValueViewer extends StatelessWidget {
  final double ammountInDebit = 300.52;

  const DebitValueViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("R\$ $ammountInDebit", style: AppTextStyle.DEBIT_VALUE),
        const SizedBox(width: 8),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove_red_eye_outlined),
            splashRadius: 20,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints())
      ],
    );
  }
}
