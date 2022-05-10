import 'package:flutter/material.dart';

// custom theme class
class Theme {
  // colors (bg)
  final Color colBg1Accent1;
  final Color colBg1Accent2;
  final Color colBg2Accent1;
  final Color colBg3Accent1;
  final Color colBg3Accent2;
  final Color colBg3Accent3;
  final Color colBg4Accent1;
  final Color colBg4Accent2;
  final Color colBg4Accent3;
  final Color colBg5Accent1;
  // colors (fg)
  final Color colFg1Accent1;
  final Color colFg2Accent1;
  final Color colFg2Accent2;
  final Color colFg3Accent1;
  final Color colFg3Accent2;
  final Color colFg4Accent1;
  // colors (transparency)
  final double colTransparency1;
  // spacings
  final double spacing1;
  // fonts
  final String font1;
  final double font1Size1;
  final double font1Size2;
  final double font1Size3;
  final double font1Size4;
  final double font1Size5;
  final FontWeight font1Weight1;
  final FontWeight font1Weight2;
  final FontWeight font1Weight3;
  final double font1LetterSpacing1;
  final double font1LetterSpacing2;
  final double font1Height1;
  final double font1Height2;

  const Theme({
    Key? key,
    // colors (bg)
    required this.colBg1Accent1,
    required this.colBg1Accent2,
    required this.colBg2Accent1,
    required this.colBg3Accent1,
    required this.colBg3Accent2,
    required this.colBg3Accent3,
    required this.colBg4Accent1,
    required this.colBg4Accent2,
    required this.colBg4Accent3,
    required this.colBg5Accent1,
    // colors (fg)
    required this.colFg1Accent1,
    required this.colFg2Accent1,
    required this.colFg2Accent2,
    required this.colFg3Accent1,
    required this.colFg3Accent2,
    required this.colFg4Accent1,
    // colors (transparency)
    required this.colTransparency1,
    // spacings
    required this.spacing1,
    // fonts
    required this.font1,
    required this.font1Size1,
    required this.font1Size2,
    required this.font1Size3,
    required this.font1Size4,
    required this.font1Size5,
    required this.font1Weight1,
    required this.font1Weight2,
    required this.font1Weight3,
    required this.font1LetterSpacing1,
    required this.font1LetterSpacing2,
    required this.font1Height1,
    required this.font1Height2,
  });
}

// theme instances
// ignore: prefer_const_constructors
Theme themeBaseLight = Theme(
  // colors (bg)
  colBg1Accent1: Colors.white,
  colBg1Accent2: const Color(0xfff6f6f6),

  colBg2Accent1: Colors.black,

  colBg3Accent1: const Color(0xffb3b3b3),
  colBg3Accent2: Colors.grey.shade100,
  colBg3Accent3: Colors.grey.shade200,

  colBg4Accent1: const Color(0xff006528),
  colBg4Accent2: const Color(0xff148c47),
  colBg4Accent3: Colors.green.shade50,

  colBg5Accent1: const Color(0xfffec530),

  // colors (fg)
  colFg1Accent1: Colors.black,

  colFg2Accent1: const Color(0xffb3b3b3),
  colFg2Accent2: Color.fromARGB(255, 155, 155, 155),

  colFg3Accent1: const Color(0xff148c47),
  colFg3Accent2: const Color.fromARGB(255, 33, 170, 92),

  colFg4Accent1: Colors.white,

  // colors (transparency)
  colTransparency1: 0.75,

  // spacings
  spacing1: 24,

  // fonts
  font1: 'Urbanist',
  font1Size1: 12.75,
  font1Size2: 13.5,
  font1Size3: 22.5,
  font1Size4: 15.5,
  font1Size5: 11.25,
  font1Weight1: FontWeight.w500,
  font1Weight2: FontWeight.w700,
  font1Weight3: FontWeight.w800,
  font1LetterSpacing1: 0.3,
  font1LetterSpacing2: 0.15,
  font1Height1: 0.9,
  font1Height2: 1.05,
);

// theme used variable
Theme theme = themeBaseLight;
