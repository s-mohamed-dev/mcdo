import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UtilScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class UtilScrollChangeNotifier extends ChangeNotifier {
  // vars
  double _position;

  // constructor
  UtilScrollChangeNotifier(
    this._position,
  );

  // getter / setters
  double get position => _position;
  set position(double value) {
    // print(value);
    _position = value;
    notifyListeners();
  }
}
