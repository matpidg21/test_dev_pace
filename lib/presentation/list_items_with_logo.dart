import 'package:flutter/material.dart';
import 'package:flutter_application_test_list/helpers/screen_dimensions.dart';
import 'package:flutter_application_test_list/presentation/components/container_with_logo.dart';
import 'package:flutter_application_test_list/presentation/components/item.dart';

class ListItemsWithLogoPage extends StatelessWidget {
  const ListItemsWithLogoPage({
    Key? key,
    this.countItem,
  }) : super(key: key);

  final int? countItem;

  @override
  Widget build(BuildContext context) {
    ScreenMobileDimensions.calculateMultipliers(context);
    final hMultiplier =
        ScreenMobileDimensions.getInstance().getHeightMobileMultiplier();
    final wMultiplier =
        ScreenMobileDimensions.getInstance().getWidthMobileMultiplier();

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    const ContainerWithLogo(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10 * hMultiplier),
                      child: Wrap(
                        runSpacing: 10 * hMultiplier,
                        spacing: 10 * wMultiplier,
                        alignment: WrapAlignment.start,
                        children: List.generate(
                          countItem!,
                          (index) {
                            return Item(
                              index: index,
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
