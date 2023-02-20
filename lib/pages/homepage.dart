import 'package:flutter/material.dart';
import 'package:nft_app/pages/widgets/nft_card.dart';
import 'package:nft_app/utils/nft_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff261515),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [






              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(
                          'lib/assets/images/user.jpg',
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Johnwillz',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '1.2k News Upload',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: NftColors.grey,
                    ),
                    child: const Icon(
                      Icons.grid_view_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Search NFT or artist name..',
                  hintStyle: const TextStyle(color: Colors.white),
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: NftColors.grey,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Chip(
                    label: Text('All'),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    backgroundColor: NftColors.grey,
                  ),
                  Chip(
                    label: Text(
                      'Trending',
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    backgroundColor: Colors.black54,
                  ),
                  Chip(
                    label: Text(
                      'Art Work',
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    backgroundColor: Colors.black54,
                  ),
                  Chip(
                    label: Text(
                      'Collectibles',
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    backgroundColor: Colors.black54,
                  ),
                  
                 
                  
                ],
              ),
              SizedBox(height: 25,),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Collection', style: TextStyle(color: Colors.white, fontSize: 20),),
                  Text('See All', style: TextStyle(color: Colors.white),),
                ],
              ),

              SizedBox(height: 20,),

              NftCards(),
            ],
          ),
        ),
      ),
    );
  }
}
