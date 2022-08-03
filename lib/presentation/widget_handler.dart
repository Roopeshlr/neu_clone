import 'dart:convert';

import 'package:app/data/global_config.dart';
import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:app/presentation/neu_banner_widget.dart';
import 'package:app/presentation/neu_carousal_widget.dart';
import 'package:app/presentation/neu_footer_widget.dart';
import 'package:app/presentation/neu_grid_widget.dart';
import 'package:app/presentation/neu_grid_with_background.dart';
import 'package:app/presentation/neu_grid_with_title_widget.dart';
import 'package:app/presentation/neu_horizontal_scroll_widget.dart';
import 'package:app/presentation/neu_pay_tab_widget.dart';
import 'package:flutter/material.dart';

import 'package:app/presentation/neu_headline_widget.dart';

class WidgetHandler extends StatefulWidget {
  const WidgetHandler({Key? key}) : super(key: key);

  @override
  State<WidgetHandler> createState() => _WidgetHandlerState();
}

class _WidgetHandlerState extends State<WidgetHandler> {
  late DynamicWidgets dynamicWidgets;

  @override
  void initState() {
    dynamicWidgets = dynamicWidgetsFromJson(GlobalConfig.homePageConfig);
    print("Roope ${dynamicWidgets.widgets?.first.widgetName} ");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          key: const Key("parent_list_view"),
          shrinkWrap: true,
          itemCount: dynamicWidgets.widgets!.length,
          itemBuilder: (context, index) {
            return getWidgetByType(dynamicWidgets.widgets![index]);
          }),
    );
  }

  Widget getWidgetByType(WidgetQ widgetQ) {
    switch (widgetQ.widgetName) {
      case "carousal":
        return NeuCarousalWidget(
          widgetQ.widgetProperties!,
          true,
          key: Key(widgetQ.widgetKey!),
        );
      case "carousal_without_ind":
        return NeuCarousalWidget(widgetQ.widgetProperties!, false,
            key: Key(widgetQ.widgetKey!));
      case "grid_1":
        return NeuPayTabWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!));
      case "banner_1":
        return NeuBannerWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!));
      case "headline":
        return NeuHeadlineWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!));
      case "grid_2":
        return NeuGridWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!));
      case "grid_3":
        return NeuGridWithTitleWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!));
      case "grid_4":
        return NeuGridWithBackgroundWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!),type: widgetQ.widgetName!,);
      case "grid_5":
        return NeuGridWithBackgroundWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!),type:widgetQ.widgetName!,);
        case "horizontal_scroll_1":
        return NeuHorizontalScrollWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!));
      case "footer":
        return NeuFooterWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!));
      default:
        return Container();
    }
  }
}
