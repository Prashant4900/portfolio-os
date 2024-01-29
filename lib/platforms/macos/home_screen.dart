import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/common.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/platforms/macos/dock.dart';
import 'package:portfolio/platforms/macos/status_bar.dart';

Future<String> getBatteryPercentage() async {
  final battery = Battery();

  final percentage = await battery.batteryLevel;

  return '$percentage%';
}

class MyMacosHomeScreen extends StatelessWidget {
  const MyMacosHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.macosBackground.path),
            fit: BoxFit.fill,
          ),
        ),
        child: const Column(
          children: [
            MacStatusBarWidget(),
            Expanded(child: emptyWidget),
            MacDockWidget(),
          ],
        ),
      ),
    );
  }
}
