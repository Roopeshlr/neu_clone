import 'dart:convert';

import 'package:app/data/global_config.dart';
import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:app/presentation/neu_banner_widget.dart';
import 'package:app/presentation/neu_carousal_widget.dart';
import 'package:app/presentation/neu_grid_widget.dart';
import 'package:app/presentation/neu_pay_tab_widget.dart';
import 'package:flutter/material.dart';

import 'package:app/presentation/neu_headline_widget.dart';


class WidgetHandler extends StatefulWidget {
  const WidgetHandler({Key? key}) : super(key: key);

  @override
  State<WidgetHandler> createState() => _WidgetHandlerState();
}

class _WidgetHandlerState extends State<WidgetHandler> {

 late  DynamicWidgets dynamicWidgets;

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
        return  NeuCarousalWidget(widgetQ.widgetProperties!,true);
        break;
        case "carousal_without_ind":
        return  NeuCarousalWidget(widgetQ.widgetProperties!,false);
        break;
      case "grid_1":
        return  NeuPayTabWidget(widgetQ.widgetProperties!);
        break;
      case "banner_1":
        return  NeuBannerWidget(widgetQ.widgetProperties!);
        break;
      case "headline":
        return  NeuHeadlineWidget(widgetQ.widgetProperties!);
        break;
      case "grid_2":
        return  NeuGridWidget(widgetQ.widgetProperties!,);
        break;

      default:
        return Container();
    }
  }
}
