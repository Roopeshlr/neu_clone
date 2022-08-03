
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
import 'package:app/presentation/new_webview_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:app/presentation/neu_headline_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WidgetHandler extends StatefulWidget {
  const WidgetHandler({Key? key}) : super(key: key);

  @override
  State<WidgetHandler> createState() => _WidgetHandlerState();
}

class _WidgetHandlerState extends State<WidgetHandler> {
  String tag = "WidgetHandler";
  late DynamicWidgets dynamicWidgets;

  @override
  void initState() {
    dynamicWidgets = dynamicWidgetsFromJson(GlobalConfig.homePageConfig);
    if (kDebugMode) {
      print("$tag ${dynamicWidgets.widgets?.first.widgetName} ");
    }
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
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
          key: Key(widgetQ.widgetKey!),
        );
      case "carousal_without_ind":
        return NeuCarousalWidget(widgetQ.widgetProperties!, false,
            onTapCallback: (type, path) {
          _handleCallBack(type, path);
        }, key: Key(widgetQ.widgetKey!));
      case "grid_1":
        return NeuPayTabWidget(
          widgetQ.widgetProperties!,
          key: Key(widgetQ.widgetKey!),
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
        );
      case "banner_1":
        return NeuBannerWidget(
          widgetQ.widgetProperties!,
          key: Key(widgetQ.widgetKey!),
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
        );
      case "headline":
        return NeuHeadlineWidget(
          widgetQ.widgetProperties!,
          key: Key(widgetQ.widgetKey!),
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
        );
      case "grid_2":
        return NeuGridWidget(
          widgetQ.widgetProperties!,
          key: Key(widgetQ.widgetKey!),
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
        );
      case "grid_3":
        return NeuGridWithTitleWidget(
          widgetQ.widgetProperties!,
          key: Key(widgetQ.widgetKey!),
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
        );
      case "grid_4":
        return NeuGridWithBackgroundWidget(
          widgetQ.widgetProperties!,
          key: Key(widgetQ.widgetKey!),
          type: widgetQ.widgetName!,
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
        );
      case "grid_5":
        return NeuGridWithBackgroundWidget(
          widgetQ.widgetProperties!,
          key: Key(widgetQ.widgetKey!),
          type: widgetQ.widgetName!,
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
        );
      case "horizontal_scroll_1":
        return NeuHorizontalScrollWidget(
          widgetQ.widgetProperties!,
          key: Key(widgetQ.widgetKey!),
          onTapCallback: (type, path) {
            _handleCallBack(type, path);
          },
        );
      case "footer":
        return NeuFooterWidget(widgetQ.widgetProperties!,
            key: Key(widgetQ.widgetKey!));
      default:
        return Container();
    }
  }

  void _handleCallBack(String type, String path) {
    switch (type) {
      case "webview":
        print(path);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NeuWebviewWidget(path)),
        );
        break;
      case "deeplink":
        Fluttertoast.showToast(
            msg: "deeplink Not implemented",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 16.0);
        break;
      default:
        Fluttertoast.showToast(
            msg: "CTA Path Not implemented",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 16.0);
    }
  }
}
