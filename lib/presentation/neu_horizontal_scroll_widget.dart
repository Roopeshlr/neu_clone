import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class NeuHorizontalScrollWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  final Function(String, String)? onTapCallback;
  const NeuHorizontalScrollWidget(this.widgetProperty ,{Key? key,this.onTapCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: widgetProperty.length,
          itemBuilder: (BuildContext ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  if (onTapCallback != null) {
                    onTapCallback!(widgetProperty[index].ctaType!,
                        widgetProperty[index].ctaPath!);
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 20,
                  color:Colors.white,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Image.network(widgetProperty[index].imageUrl!,fit: BoxFit.fill,height: 170,),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            color:Colors.white.withOpacity(0.8),
                            width:  MediaQuery.of(context).size.width * 0.40,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(widgetProperty[index].title!,style: const TextStyle(
                                    fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14),maxLines: 2,),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

