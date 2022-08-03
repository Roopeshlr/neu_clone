// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:app/data/global_config.dart';
import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:app/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import 'package:app/main.dart';

DynamicWidgets dynamicWidgets =
    dynamicWidgetsFromJson(GlobalConfig.homePageConfig);

void main() {
  testWidgets("Flutter Dynamic Widget Smoke Test", (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(const MyApp());

      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));

      // Test grid_1 type widget text
      testGridTypeOneWidgets();

      //Test dynamic widget of headline with key id
      await tester.dragUntilVisible(find.byKey(const ValueKey('widget_key6')),
          find.byKey(const ValueKey('parent_list_view')), const Offset(0, -654));

      //Test dynamic widget of headline with text

      await tester.dragUntilVisible(find.text(getFirstWidgetString()),
          find.byKey(const ValueKey('parent_list_view')), const Offset(0, -500));
    });
  });
}

String getFirstWidgetString() {
  WidgetQ e =  dynamicWidgets.widgets!.firstWhere((element) => element.widgetName == "headline");
  return e.widgetProperties!.first.title!;
}


void testGridTypeOneWidgets() {
  for (var element in dynamicWidgets.widgets!) {
    if (element.widgetName == 'grid_1') {
      for (var element in element.widgetProperties!) {
        expect(find.text(element.title!), findsOneWidget);
      }
    }
  }
}

