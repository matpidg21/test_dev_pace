import 'package:flutter/material.dart';
import 'package:flutter_application_test_list/helpers/screen_dimensions.dart';

class ContainerWithLogo extends StatelessWidget {
  const ContainerWithLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenMobileDimensions.calculateMultipliers(context);
    final hMultiplier =
        ScreenMobileDimensions.getInstance().getHeightMobileMultiplier();
    final wMultiplier =
        ScreenMobileDimensions.getInstance().getWidthMobileMultiplier();

    return Expanded(
      child: SizedBox.expand(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 30 * hMultiplier,
            horizontal: 30 * wMultiplier,
          ),
          child: Image.asset('assets/icons/logo.png'),
        ),
      ),
    );
  }
}
