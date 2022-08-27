import 'package:flutter/widgets.dart';
import 'package:learning_ui/ui/common/my_card.dart';

class MyGame {
  String name;
  int totalDownloaded;
  String asset;
  int rate;
  String description;
  bool isHeart;

  MyGame({required this.asset, required this.name, required this.totalDownloaded, required this.description, required this.isHeart, required this.rate});

  String get download => totalDownloadedToString();

  String totalDownloadedToString() {
    String result;
    if(totalDownloaded < 1000000) {
      String convert =  (totalDownloaded ~/ 1000).toString();
      int numberOfZeros = convert.length - 1;
      String number = convert[0];
      result = '$number${'0' * numberOfZeros}N';
    } else if (totalDownloaded < 1000000000) {
      result = '+${totalDownloaded ~/ 1000000}Tr';
    } else {
      result = totalDownloaded.toString();
    }
    return '$result download';
  }
}