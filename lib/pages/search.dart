import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 400,
              child: Lottie.asset('lottie/search.json'),
            )
          ],
        ),
      ),
    );
  }
}
