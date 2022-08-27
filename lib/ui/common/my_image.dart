import 'package:flutter/material.dart';
import 'package:learning_ui/constant/colors/colors.dart';
import 'package:learning_ui/constant/image.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: size.height / 2.40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    color: MyColors.bottomBannerContainerFront,
                  ),
                )
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                  height: size.height / 2.45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
                      color: MyColors.bottomBannerContainerBefore,
                    ),
                  )
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: size.height / 2.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(ImageFromAssets.banner, fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
