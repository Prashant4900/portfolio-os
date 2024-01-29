import 'dart:async';
import 'dart:developer';

import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/cupertino.dart';

class BatteryProvider extends ChangeNotifier {
  BatteryProvider() {
    // Initialize the stream with the current battery percentage
    update();
    // Set up a periodic timer to update the battery percentage every 5 minutes
    Timer.periodic(const Duration(minutes: 1), (timer) {
      update();
    });
  }

  Future<void> init() async {
    try {
      final battery = Battery();
      final percentage = await battery.batteryLevel;

      _batteryPercentage = '$percentage%';
      notifyListeners();
    } catch (e) {
      log('failed to fetch battery detail: $e');
    }
  }

  final Battery _battery = Battery();
  final StreamController<String> _batteryPercentageController =
      StreamController<String>();

  Stream<String> get batteryPercentageStream =>
      _batteryPercentageController.stream;

  String _batteryPercentage = '';

  String get batteryPercentage => _batteryPercentage;

  Future<void> update() async {
    try {
      final percentage = await _battery.batteryLevel;
      _batteryPercentage = '$percentage%';
      _batteryPercentageController.add(_batteryPercentage);
    } catch (e) {
      _batteryPercentageController.addError(e);
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _batteryPercentageController.close();
    super.dispose();
  }
}
