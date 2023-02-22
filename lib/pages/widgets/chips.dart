import 'package:flutter/material.dart';
import 'package:nft_app/utils/nft_color.dart';

class NftChips extends StatelessWidget {
  const NftChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Chip(
          label: Text('All'),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          backgroundColor: NftColors.grey,
        ),
        Chip(
          label: const Text(
            'Trending',
            style: TextStyle(color: Colors.white),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          backgroundColor: Colors.brown.withOpacity(0.9),
        ),
        Chip(
          label: const Text(
            'Art Work',
            style: TextStyle(color: Colors.white),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          backgroundColor: Colors.brown.withOpacity(0.9),
        ),
        Chip(
          label: const Text(
            'Collectibles',
            style: TextStyle(color: Colors.white),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          backgroundColor: Colors.brown.withOpacity(0.9),
        ),
      ],
    );
  }
}
