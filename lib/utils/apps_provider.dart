import 'package:flutter/material.dart';

enum Apps {
  spotify('Spotify'),
  safari('Safari'),
  vsCode('VS Code');

  const Apps(this.name);
  final String name;
}

class AppsProvider extends ChangeNotifier {
  final String _appName = 'Finder';

  final List<Widget> _openApps = [];

  List<Widget> get openApps => _openApps;

  String get appName => _appName;

  void open(Widget app) {
    _openApps.add(app);
    notifyListeners();
  }

  void close() {
    _openApps.removeAt(_openApps.length - 1);
    notifyListeners();
  }
}
