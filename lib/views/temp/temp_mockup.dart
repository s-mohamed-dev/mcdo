import 'package:flutter/material.dart';
import 'package:mcdo/configs/config_constant.dart';
import 'package:mcdo/views/utils/util_theme.dart';
import 'package:mcdo/views/widgets/app_bar.dart';

class TempMockup extends StatefulWidget {
  final Widget content;

  const TempMockup({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  State<TempMockup> createState() => _TempMockupState();
}

class _TempMockupState extends State<TempMockup> {
  double _mockupOpacity = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: mockupWidth,
          height: mockupHeight,
          // app
          child: Scaffold(
            backgroundColor: theme.colBg1Accent2,
            // stack for content and mockup (slider / image)
            body: Stack(
              children: [
                // app bar / content
                widget.content,
                // mockup slider
                SizedBox(
                  width: 80,
                  height: 128,
                  child: Opacity(
                    opacity: _mockupOpacity,
                    child: Transform.translate(
                      // offset so you can always have access to the slider
                      offset: const Offset(-64, 0),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Slider(
                          value: _mockupOpacity,
                          min: 0,
                          max: 1,
                          onChanged: (newValue) {
                            setState(() {
                              _mockupOpacity = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                // mockup image
                IgnorePointer(
                  child: Opacity(
                    opacity: _mockupOpacity,
                    child: Image(
                      image: AssetImage(
                        mockupPath,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
