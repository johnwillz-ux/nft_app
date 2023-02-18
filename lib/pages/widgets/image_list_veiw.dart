import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft_app/widget/intro_image_widget.dart';

class ImageListView extends StatefulWidget {
  final int startIndex;

  const ImageListView({Key? key, required this.startIndex}) : super(key: key);

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (!_scrollController.position.atEdge) {
        // implement scroll of list
        _autoScroll();
      }
      // adding to list
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _autoScroll();
      });
    });
  }

  void _autoScroll() {
    final currentScrollPosition = _scrollController.offset;
    final scrollEndPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(
      () {
        _scrollController.animateTo(
            currentScrollPosition == scrollEndPosition ? 0 : scrollEndPosition,
            duration: const Duration(seconds: 10),
            curve: Curves.linear);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.98 * pi,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.60,
        child: ListView.builder(
            controller: _scrollController,
            itemCount: 5,
            itemBuilder: (context, index) {
              return NftIntroImage(image: nftIntroImages[index][0]);
            }),
      ),
    );
  }
}

final List nftIntroImages = [
  ['lib/assets/images/nft1.jpg'],
  ['lib/assets/images/nft2.jpg'],
  ['lib/assets/images/nft3.jpg'],
  ['lib/assets/images/nft4.jpg'],
  ['lib/assets/images/nft5.jpg'],
];
