import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class NeuCarousalWidget extends StatefulWidget {
   const NeuCarousalWidget({Key? key}) : super(key: key);

  @override
  State<NeuCarousalWidget> createState() => _NeuCarousalWidgetState();
}

class _NeuCarousalWidgetState extends State<NeuCarousalWidget> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

   void onPageChanged(int index) {
     _currentPageIndicator?.add(index);
   }

   BehaviorSubject<int>? _currentPageIndicator;

   final CarouselController _carouselController = CarouselController();


   // late PageController _pageController = PageController();
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
    return Container(
        child: Column(
          children: [
            CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    onPageChanged(index);
                  }
              ),
              items: imgList
                  .map((item) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(item, fit: BoxFit.fill, width: 1000)),
                  ))
                  .toList(),
            ),

            const SizedBox(height: 5),

            StreamBuilder<int>(
                stream: _currentPageIndicator,
                builder: (context, snapshot) {
                  return AnimatedSmoothIndicator(
                    activeIndex: snapshot.data ?? 0,
                    count: imgList.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.white,
                        dotColor: Color(0xFF1e1e1e),
                        radius:2,
                      dotWidth: 30,
                      dotHeight: 5,
                      strokeWidth: 0.2,
                      expansionFactor: 2
                    ),
                  );
                })
          ],
        ));
  }
}
