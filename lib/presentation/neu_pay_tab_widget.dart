import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:flutter/material.dart';

class NeuPayTabWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  const NeuPayTabWidget(this.widgetProperty,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _getRowChildren(),
      ),
    );
  }

  List<Widget> _getRowChildren() {
    return widgetProperty.map((e) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          e.imageUrl!
          ,width: 48,height: 48,
        ),
        const SizedBox(height: 12,),
        Text('${e.title}',style: const TextStyle(fontSize: 15,color: Colors.white),)
      ],
    )).toList();
  }
}
