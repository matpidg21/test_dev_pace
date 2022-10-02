import 'package:flutter/widgets.dart';

class ScreenMobileDimensions {
  static final ScreenMobileDimensions _screenMobileDimensions =
      ScreenMobileDimensions();

  static const _referencedMobileHeight = 689.0;
  static const _referenceMobiledWidth = 321.0;

  late double _statusMobileBarHeight;
  late double _heightMobileMultiplier;
  late double _widthMobileMultiplier;

  static void calculateMultipliers(BuildContext context) {
    _screenMobileDimensions._statusMobileBarHeight =
        MediaQuery.of(context).padding.top;
    _screenMobileDimensions._heightMobileMultiplier =
        (MediaQuery.of(context).size.height / _referencedMobileHeight);
    _screenMobileDimensions._widthMobileMultiplier =
        MediaQuery.of(context).size.width / _referenceMobiledWidth;
  }

  static ScreenMobileDimensions getInstance() => _screenMobileDimensions;

  double getHeightMobileMultiplier() => _heightMobileMultiplier;

  double getWidthMobileMultiplier() => _widthMobileMultiplier;

  double getStatusMobileBarHeight() => _statusMobileBarHeight;
}
