import 'package:flutter/material.dart';
import 'package:nft_app/pages/homepage.dart';
import 'package:nft_app/pages/widgets/image_list_veiw.dart';
import 'package:nft_app/utils/nft_color.dart';
import 'package:slider_button/slider_button.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff261515),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: -0,
              left: -170,
              child: Row(
                children: const [
                  ImageListView(startIndex: 0),
                  ImageListView(startIndex: 1),
                  ImageListView(startIndex: 2),
                  ImageListView(startIndex: 3),
                ],
              )),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      NftColors.primary.withOpacity(0.5),
                      NftColors.primary,
                      NftColors.primary,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Exclusive \nDigital \nCollectibles',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'NFT has a value that can be called \nan asset that has a unique code.',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(60)),
                        child: SliderButton(
                          action: () {
                            ///Do something here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          },
                          label: const Text(
                            "Get Started",
                            style: TextStyle(
                                color: Color(0xff4a4a4a),
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                          width: MediaQuery.of(context).size.width,
                          radius: 60,
                          backgroundColor: Colors.transparent,
                          highlightedColor: Colors.white,
                          baseColor: Colors.white38,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
