import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:nft_app/pages/widgets/nft_card.dart';

class NftImageList extends StatelessWidget {
  const NftImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: nftCardInfo.length,
      itemHeight: 400,
      itemWidth: double.infinity,
      loop: true,
      duration: 1200,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return NftCards(
          bidPrice: nftCardInfo[index][0],
          nftImage: nftCardInfo[index][1],
        );
      },
      layout: SwiperLayout.STACK,
    );
  }
}

final List nftCardInfo = [
  // [nftPrice, nftImage]
  ['20.10', 'lib/assets/images/nft6.jpg'],
  ['30.29', 'lib/assets/images/nft9.jpg'],
  ['15.04', 'lib/assets/images/nft8.jpg'],
  ['55.04', 'lib/assets/images/nft7.jpg'],
];
