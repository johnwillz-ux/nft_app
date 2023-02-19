import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff261515),
      body: Container(
          child: Text(
        'HOMEPAGE',
        style: TextStyle(color: Colors.white, fontSize: 40),
      )),
    );
  }
}
