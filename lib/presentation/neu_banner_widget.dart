import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:flutter/material.dart';


class NeuBannerWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  const NeuBannerWidget(this.widgetProperty ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,right: 24,left: 24,bottom: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(widgetProperty.first.imageUrl!),
      ),
    );
  }
}

