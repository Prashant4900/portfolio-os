import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/platforms/macos/dock.dart';
import 'package:portfolio/platforms/macos/status_bar.dart';
import 'package:portfolio/utils/apps_provider.dart';
import 'package:provider/provider.dart';

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
        child: Column(
          children: [
            const MacStatusBarWidget(),
            Expanded(
              child: Consumer<AppsProvider>(
                builder: (context, ref, child) {
                  return Stack(
                    children: ref.openApps,
                  );
                },
              ),
            ),
            const MacDockWidget(),
          ],
        ),
      ),
    );
  }
}
