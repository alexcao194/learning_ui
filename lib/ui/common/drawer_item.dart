import 'package:flutter/material.dart';
import 'package:learning_ui/constant/colors/colors.dart';
import 'package:learning_ui/constant/styles_text.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.title, required this.count, required this.icon}) : super(key: key);

  final IconData icon;
  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              icon,
              size: 25,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: MyTextStyles.drawerItem,
          ),
          const Expanded(child: SizedBox()),
          count == 0 ? const SizedBox() : SizedBox(
            height: 20.0,
            width: 20.0,
            child: ClipRRect(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: MyColors.active,
                ),
                child: Center(
                  child: Text(
                    count.toString(),
                    style: MyTextStyles.count,
                  ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
