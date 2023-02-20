import 'package:flutter/material.dart';

class NftCards extends StatelessWidget {
  const NftCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
            image: AssetImage('lib/assets/images/nft2.jpg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Image(
                          image: AssetImage(
                            'lib/assets/images/eth.png',
                          ),
                          height: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Current Bid',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '28,04 ETH',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: const Text(
                        'Place Bid',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
