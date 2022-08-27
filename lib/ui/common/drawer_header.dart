import 'package:flutter/material.dart';
import 'package:learning_ui/constant/image.dart';
import 'package:learning_ui/constant/styles_text.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50.0,
                width: 50.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(ImageFromAssets.avatar),
                ),
              ),
              const SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Alexcao', style: MyTextStyles.headerH1),
                  Text('UX/UI Design', style: MyTextStyles.department)
                ],
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down, size: 28, color: Colors.white)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
