import 'package:flutter/material.dart';
import 'package:portfolio/app/app.dart';
import 'package:portfolio/utils/battery_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BatteryProvider().init();
  runApp(const MyApp());
}
