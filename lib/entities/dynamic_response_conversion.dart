// To parse this JSON data, do
//
//     final dynamicWidgets = dynamicWidgetsFromJson(jsonString);

import 'dart:convert';

DynamicWidgets dynamicWidgetsFromJson(String str) => DynamicWidgets.fromJson(json.decode(str));

String dynamicWidgetsToJson(DynamicWidgets data) => json.encode(data.toJson());

class DynamicWidgets {
  DynamicWidgets({
    this.widgets,
  });

  List<WidgetQ>? widgets;

  factory DynamicWidgets.fromJson(Map<String, dynamic> json) => DynamicWidgets(
    widgets: List<WidgetQ>.from(json["widgets"].map((x) => WidgetQ.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "widgets": List<dynamic>.from(widgets!.map((x) => x.toJson())),
  };
}

class WidgetQ {
  WidgetQ({
    this.widgetKey,
    this.widgetName,
    this.widgetProperties,
  });

  String? widgetKey;
  String? widgetName;
  List<WidgetProperty>? widgetProperties;

  factory WidgetQ.fromJson(Map<String, dynamic> json) => WidgetQ(
    widgetKey: json["widgetKey"],
    widgetName: json["widgetName"],
    widgetProperties: List<WidgetProperty>.from(json["widgetProperties"].map((x) => WidgetProperty.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "widgetKey": widgetKey,
    "widgetName": widgetName,
    "widgetProperties": List<dynamic>.from(widgetProperties!.map((x) => x.toJson())),
  };
}

class WidgetProperty {
  WidgetProperty({
    this.title,
    this.subtitle,
    this.imageUrl,
    this.ctaType,
    this.ctaPath,
  });

  String? title;
  String? subtitle;
  String? imageUrl;
  String? ctaType;
  String? ctaPath;

  factory WidgetProperty.fromJson(Map<String, dynamic> json) => WidgetProperty(
    title: json["title"],
    subtitle: json["subtitle"],
    imageUrl: json["imageUrl"],
    ctaType: json["ctaType"],
    ctaPath: json["ctaPath"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "subtitle": subtitle,
    "imageUrl": imageUrl,
    "ctaType": ctaType,
    "ctaPath": ctaPath,
  };
}
