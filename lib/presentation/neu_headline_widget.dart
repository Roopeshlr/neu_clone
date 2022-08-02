import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:flutter/material.dart';

class NeuHeadlineWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  const NeuHeadlineWidget(this.widgetProperty, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 24, left: 24, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widgetProperty.first.title!,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              if (widgetProperty.first.subtitle != null)
                const SizedBox(
                  height: 8.0,
                ),
              if (widgetProperty.first.subtitle != null)
                Text(
                  widgetProperty.first.subtitle!,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.5)),
                ),
            ],
          ),
          if (widgetProperty.first.imageUrl != null)
            Image.network(
              widgetProperty.first.imageUrl!,
              height: 24,
              width: 24,
            )
        ],
      ),
    );
  }
}
