import 'package:flutter/material.dart';
import 'package:learning_ui/constant/colors/colors.dart';
import 'package:learning_ui/constant/image.dart';
import 'package:learning_ui/constant/styles_text.dart';
import 'package:learning_ui/demo_database/models.dart';
import 'package:learning_ui/ui/detail_page.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key, required this.myGame}) : super(key: key);

  final MyGame myGame;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPage(game: myGame)));
        },
        child: SizedBox(
          width: 200.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Column(
              children: [
                SizedBox(
                  width: 200.0,
                  height: 120.0,
                    child: Image.asset(
                        myGame.asset,
                      fit: BoxFit.fitWidth,
                    )
                ),
                Expanded(
                  child: Container(
                    color: MyColors.cardBackground,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(myGame.name, style: MyTextStyles.h3, overflow: TextOverflow.ellipsis),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(myGame.download, style: MyTextStyles.h4),
                              ),
                            ],
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_outlined, color: Colors.white, size: 35.0)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
