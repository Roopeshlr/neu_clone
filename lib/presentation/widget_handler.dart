import 'package:app/presentation/neu_carousal_widget.dart';
import 'package:app/presentation/neu_pay_tab_widget.dart';
import 'package:flutter/material.dart';

class WidgetHandler extends StatelessWidget {
  const WidgetHandler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, builder) {
            return getWidgetByType('grid_1');
          }),
    );
  }

  Widget getWidgetByType(type) {
    switch (type) {
      case "carousal":
        return const NeuCarousalWidget();
        break;
      case "grid_1":
        return const NeuPayTabWidget();
        break;
      default:
        return Container();
    }
  }
}
