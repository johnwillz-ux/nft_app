import 'package:flutter/material.dart';
import 'package:nft_app/pages/widgets/image_list_veiw.dart';

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
        children:  [
          Positioned(  top: -10, left: -150,  child: Row(children: const [

            ImageListView(startIndex: 0),
            ImageListView(startIndex: 1),
            ImageListView(startIndex: 2),


          ],))
        ],
      ),
      
      
      
      
    );
  }
}
