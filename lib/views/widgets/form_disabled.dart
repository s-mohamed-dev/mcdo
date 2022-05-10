import 'package:flutter/material.dart';

class FormDisabled extends StatelessWidget {
  final Widget child;
  const FormDisabled({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Opacity(
        opacity: .25,
        child: child,
      ),
    );
  }
}
