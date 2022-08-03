import 'package:app/entities/dynamic_response_conversion.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NeuCarousalWidget extends StatefulWidget {
  final List<WidgetProperty> widgetProperty;
  final bool isIndicatorEnabled;
  final Function(String, String)? onTapCallback;
  const NeuCarousalWidget(this.widgetProperty, this.isIndicatorEnabled,
      {Key? key, this.onTapCallback})
      : super(key: key);

  @override
  State<NeuCarousalWidget> createState() => _NeuCarousalWidgetState();
}

class _NeuCarousalWidgetState extends State<NeuCarousalWidget> {
  void onPageChanged(int index) {
    _currentPageIndicator?.add(index);
  }

  BehaviorSubject<int>? _currentPageIndicator;

  final CarouselController _carouselController = CarouselController();
  @override
  void initState() {
    _currentPageIndicator = BehaviorSubject<int>();
    super.initState();
  }

  @override
  void dispose() {
    _currentPageIndicator?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(onPageChanged: (index, reason) {
            onPageChanged(index);
          }),
          items: widget.widgetProperty
              .map((item) => GestureDetector(
                    onTap: () {
                      if (widget.onTapCallback != null) {
                        widget.onTapCallback!(item.ctaType!, item.ctaPath!);
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(item.imageUrl ?? "",
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width - 48)),
                    ),
                  ))
              .toList(),
        ),
        const SizedBox(height: 5),
        if (widget.isIndicatorEnabled)
          StreamBuilder<int>(
              stream: _currentPageIndicator,
              builder: (context, snapshot) {
                return AnimatedSmoothIndicator(
                  activeIndex: snapshot.data ?? 0,
                  count: widget.widgetProperty.length,
                  effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.white,
                      dotColor: Color(0xFF1e1e1e),
                      radius: 2,
                      dotWidth: 30,
                      dotHeight: 5,
                      strokeWidth: 0.2,
                      expansionFactor: 2),
                );
              })
      ],
    );
  }
}
