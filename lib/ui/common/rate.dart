import 'package:flutter/material.dart';
import 'package:learning_ui/constant/colors/colors.dart';
import 'package:learning_ui/demo_database/models.dart';

class Rate extends StatelessWidget {
  const Rate({Key? key, required this.game}) : super(key: key);
  final MyGame game;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: star()
    );
  }

  List<Icon> star() {
    List<Icon> result = [];
    for (int i = 0; i < 5; i++) {
      if (i < game.rate) {
        result.add(Icon(
          Icons.star,
          color: MyColors.active,
          size: 20,
        ));
      } else {
        result.add(Icon(
          Icons.star,
          color: MyColors.nonActive,
          size: 20,
        ));
      }
    }
    return result;
  }
}
