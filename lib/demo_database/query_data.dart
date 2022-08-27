import 'package:learning_ui/constant/image.dart';
import 'package:learning_ui/ui/common/my_card.dart';

import 'models.dart';

class QueryData {
  static List<MyCard> games = [
    MyCard(
        myGame: MyGame(
            asset: ImageFromAssets.csgo,
            name: "CSGO Online",
            totalDownloaded: 112356,
          description: 'Hãy sẵn sàng đến với trò chơi sandbox đầu tiên của Garena - Garena Blockman GO nào! Garena Blockman GO là trò chơi miễn phí, nội dung tối ưu cho phép bạn khám phá, sáng tạo và chia sẻ những trải nghiệm thú vị với bạn bè của mình.Bạn đã có tài khoản Blockman GO chưa? Hãy đăng nhập bằng tài khoản Blockman GO đã đăng ký của mình và chơi ngay thôi!',
          isHeart: true,
          rate: 3
        )),
    MyCard(
        myGame: MyGame(
            asset: ImageFromAssets.freefire,
            name: 'Freefire - Play Now',
            totalDownloaded: 1123456,
            description: 'Hãy sẵn sàng đến với trò chơi sandbox đầu tiên của Garena - Garena Blockman GO nào! Garena Blockman GO là trò chơi miễn phí, nội dung tối ưu cho phép bạn khám phá, sáng tạo và chia sẻ những trải nghiệm thú vị với bạn bè của mình.Bạn đã có tài khoản Blockman GO chưa? Hãy đăng nhập bằng tài khoản Blockman GO đã đăng ký của mình và chơi ngay thôi!',
            isHeart: false,
            rate: 2
        )),
    MyCard(
        myGame: MyGame(
            asset: ImageFromAssets.gunpow,
            name: 'GunPow - Free Game',
            totalDownloaded: 4123456,
            description: 'Hãy sẵn sàng đến với trò chơi sandbox đầu tiên của Garena - Garena Blockman GO nào! Garena Blockman GO là trò chơi miễn phí, nội dung tối ưu cho phép bạn khám phá, sáng tạo và chia sẻ những trải nghiệm thú vị với bạn bè của mình.Bạn đã có tài khoản Blockman GO chưa? Hãy đăng nhập bằng tài khoản Blockman GO đã đăng ký của mình và chơi ngay thôi!',
            isHeart: true,
            rate: 5
        ))
  ];
}
