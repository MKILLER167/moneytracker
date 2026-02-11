import 'package:flutter/material.dart';

extension ResponsiveContext on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  double get screenHeight => screenSize.height;
  double get screenWidth => screenSize.width;

  double heightPct(double percent) => screenHeight * percent;
  double widthPct(double percent) => screenWidth * percent;
}
