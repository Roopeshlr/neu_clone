import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:flutter/material.dart';

class NeuBannerWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  final Function(String, String)? onTapCallback;
  const NeuBannerWidget(this.widgetProperty, {Key? key, this.onTapCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 24, left: 24, bottom: 8),
      child: GestureDetector(
        onTap: () {
          if (onTapCallback != null) {
            onTapCallback!(
                widgetProperty.first.ctaType!, widgetProperty.first.ctaPath!);
          }
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(widgetProperty.first.imageUrl!),
        ),
      ),
    );
  }
}
