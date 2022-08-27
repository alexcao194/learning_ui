import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.child, required this.color}) : super(key: key);
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 50.0,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15.0)) + const BorderRadius.only(bottomRight: Radius.circular(15.0)),
          child: Container(
            color: color,
            child: Center(child: child),
          ),
        )
      ),
    );
  }
}
