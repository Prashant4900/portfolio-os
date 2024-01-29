import 'package:flutter/material.dart';
import 'package:portfolio/gen/assets.gen.dart';

class MyMacosBootingScreen extends StatelessWidget {
  const MyMacosBootingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.apple.svg(
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
            width: 100,
          ),
          const SizedBox(height: 50),
          const SizedBox(
            width: 200,
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.white,
              minHeight: 2,
            ),
          ),
        ],
      ),
    );
  }
}
