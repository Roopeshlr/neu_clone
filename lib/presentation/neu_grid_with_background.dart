import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class NeuGridWithBackgroundWidget extends StatelessWidget {
  final List<WidgetProperty> widgetProperty;
  final String type;
  final Function(String, String)? onTapCallback;
  const NeuGridWithBackgroundWidget(this.widgetProperty, {Key? key,this.type ="",this.onTapCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 24, left: 24, bottom: 8),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 3,
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
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.network(
                        widgetProperty[index].imageUrl!,
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width * 0.50,
                        height: 200,
                      ),
                    ),
                   getOfferDetailWidget(context,index,type),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget getOfferDetailWidget(context,int index,String type) {

    switch (type) {
      case "grid_4":
        return Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.43,
              height: 60,
              padding: const EdgeInsets.only(left:12 ,right:12 ,top:8 ,bottom:4 ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  widgetProperty[index].title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  maxLines: 2,
                ),
              ),
            ));
      case "grid_5":
        return Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.43,
              height: 60,
              padding: const EdgeInsets.only(left:12 ,right:12 ,top:8 ,bottom:4 ),
              decoration: const BoxDecoration(
                  color: Colors.white,),
              child: Column(
                children: [
                  Text(
                    widgetProperty[index].title!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12,right: 12,top: 4,bottom: 4),
                    child: Divider(height: 2,thickness: 2,),
                  ),
                  Text(
                    widgetProperty[index].subtitle!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ));
      default:
        return Container();
    }
  }
}
