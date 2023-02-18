import 'dart:math';

import 'package:flutter/material.dart';

class ImageListView extends StatefulWidget {
  final int startIndex;

  const ImageListView({Key? key, required this.startIndex}) : super(key: key);

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.98 * pi,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.60,
        child: ListView.builder(itemCount: 5, itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(
              right: 8.0,
              left: 8.0,
              top: 10.0,
            ),
            height: MediaQuery.of(context).size.height * 0.40,


          );
        }),
      ),
    );
  }
}
