import 'package:flutter/material.dart';

class NftIntroImage extends StatefulWidget {
  final String image;
  const NftIntroImage({Key? key, required this.image}) : super(key: key);

  @override
  State<NftIntroImage> createState() => _NftIntroImageState();
}

class _NftIntroImageState extends State<NftIntroImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
