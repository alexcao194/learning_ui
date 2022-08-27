import 'package:flutter/material.dart';
import 'package:learning_ui/constant/colors/colors.dart';
import 'package:learning_ui/constant/styles_text.dart';
import 'package:learning_ui/demo_database/models.dart';
import 'package:learning_ui/ui/common/my_button.dart';
import 'package:learning_ui/ui/common/rate.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.game}) : super(key: key);
  final MyGame game;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: size.width,
                  child: Image.asset(game.asset, fit: BoxFit.fitWidth)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(game.name, style: MyTextStyles.h1),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Rate(game: game),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: size.height / 5,
                  child: Text(
                    game.description,
                    style: MyTextStyles.p,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: MyButton(
                      color: game.isHeart ? MyColors.active : MyColors.nonActive,
                        child: Icon(
                        Icons.favorite,
                      color: game.isHeart ? Colors.black : Colors.white,
                    )),
                  ),
                  Expanded(
                    flex: 2,
                    child: MyButton(
                      color: MyColors.active,
                      child: const Text(
                          'Download now',
                        style: MyTextStyles.downloadButton,
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Review', style: MyTextStyles.h1),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('No review here...', style: MyTextStyles.review),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
