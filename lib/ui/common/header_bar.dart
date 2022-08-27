import 'package:flutter/material.dart';
import 'package:learning_ui/constant/image.dart';
import 'package:learning_ui/constant/styles_text.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Recommended', style: MyTextStyles.h1),
            Text(
              'Choose the game you like',
              style: MyTextStyles.h2,
            )
          ],
        ),
        const Expanded(child: SizedBox()),
        SizedBox(
          height: 45.0,
          width: 45.0,
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                ImageFromAssets.avatar,
              ),
            ),
          ),
        )
      ],
    );
  }
}
