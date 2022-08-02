import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class NeuGridWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  const NeuGridWidget(this.widgetProperty ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,right: 24,left: 24,bottom: 8),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 2/1.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20),
          itemCount: widgetProperty.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              width: 40,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),

                  borderRadius: BorderRadius.circular(8)),
              child: Stack(
                children: [
                  Positioned(
                      bottom: 12,
                      left: 12,
                      child: Image.network(widgetProperty[index].imageUrl!,width: 24,height: 24,),),
                  Positioned(
                      top: 12,
                      left: 12,
                      child: Text(widgetProperty[index].title!,style: const TextStyle(
                      fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),)),

                  if(widgetProperty[index].bgUrl!=null)Positioned(
                      bottom: 12,
                      right: 12,
                      child: Image.network(widgetProperty[index].bgUrl!,width: 30,height: 50,),)
                ],
              ),
            );
          }),
    );
  }
}

