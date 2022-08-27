import 'package:flutter/material.dart';
import 'package:learning_ui/constant/styles_text.dart';

class DrawerTitle extends StatelessWidget {
  const DrawerTitle({Key? key, required this.icon, required this.label}) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white38,
          size: 25,
        ),
        const SizedBox(width: 8.0),
        Text(
          label,
          style: MyTextStyles.review,
        )
      ],
    );
  }
}
