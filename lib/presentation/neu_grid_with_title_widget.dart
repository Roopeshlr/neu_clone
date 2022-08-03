import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class NeuGridWithTitleWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  final Function(String, String)? onTapCallback;
  const NeuGridWithTitleWidget(this.widgetProperty ,{Key? key,this.onTapCallback}) : super(key: key);

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
            return GestureDetector(
              onTap: () {
                if (onTapCallback != null) {
                  onTapCallback!(widgetProperty[index].ctaType!,
                      widgetProperty[index].ctaPath!);
                }
              },
              child: Container(
                width: 40,
                height: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)),
                child: Stack(
                  children: [
                    ClipRRect(
                       borderRadius: BorderRadius.circular(12),
                        child: Image.network(widgetProperty[index].imageUrl!,fit: BoxFit.fill,)),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.only(top: 4,bottom: 4),
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(topLeft:Radius.circular(6) ,topRight: Radius.circular(6))
                          ),
                          width: MediaQuery.of(context).size.width * 0.28,
                          child: Center(
                            child: Text(widgetProperty[index].title!,style: const TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),),
                          ),
                        )),

                  ],
                ),
              ),
            );
          }),
    );
  }
}

