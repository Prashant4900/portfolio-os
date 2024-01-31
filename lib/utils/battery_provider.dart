import 'dart:async';
import 'dart:developer';

import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/cupertino.dart';

enum BatteryStatus { full, mid, low }

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

  final StreamController<BatteryStatus> _batteryStatusController =
      StreamController<BatteryStatus>();

  Stream<String> get batteryPercentageStream =>
      _batteryPercentageController.stream;

  Stream<BatteryStatus> get batteryStatusController =>
      _batteryStatusController.stream;

  String _batteryPercentage = '';

  BatteryStatus _batteryStatus = BatteryStatus.full;

  BatteryStatus get batteryStatus => _batteryStatus;

  String get batteryPercentage => _batteryPercentage;

  Future<void> update() async {
    try {
      final percentage = await _battery.batteryLevel;
      _batteryPercentage = '$percentage%';
      if (percentage > 85) {
        _batteryStatus = BatteryStatus.full;
      } else if (percentage <= 85 && percentage >= 40) {
        _batteryStatus = BatteryStatus.mid;
      } else {
        _batteryStatus = BatteryStatus.low;
      }
      _batteryPercentageController.add(_batteryPercentage);
      _batteryStatusController.add(_batteryStatus);
    } catch (e) {
      _batteryPercentageController.addError(e);
      _batteryStatusController.addError(e);
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _batteryPercentageController.close();
    _batteryStatusController.close();
    super.dispose();
  }
}
