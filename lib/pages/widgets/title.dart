import 'package:flutter/material.dart';

class NftTitle extends StatelessWidget {
  final String title;
  final String seeAll;
  const NftTitle({Key? key, required this.title, required this.seeAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          'See All',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
