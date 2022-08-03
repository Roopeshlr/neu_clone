import 'dart:ui';

import 'package:app/presentation/widget_handler.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: getBody(context),
    ));
  }

  Widget getAppBarWidget(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      color: const Color(0xFF1e1e1e),
      child: Column(
        children: [
          Material(
            color: const Color(0xFF1e1e1e),
            shadowColor: Colors.grey,
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network(
                        'https://i.ibb.co/XZQnXGV/Whats-App-Image-2022-08-01-at-7-18-53-PM.jpg',
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Tata Neu',
                        style: GoogleFonts.novaOval(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.network(
                        'https://i.ibb.co/T0LTqGJ/notifi.jpg',
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.network(
                        'https://i.ibb.co/Yy4kHJ3/Whats-App-Image-2022-08-01-at-7-18-53-PM-1.jpg',
                        width: 28,
                        height: 28,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          getSearchPill(context),
        ],
      ),
    );
  }

  Widget getBody(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [getAppBarWidget(context), getMainContent(context)],
    );
  }

  Widget getMainContent(context) {
    return const WidgetHandler();
  }

  Widget getSearchPill(context) {
    return Row(
      children:[
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           width: MediaQuery.of(context).size.width*0.70,
           height: 30,
           decoration: BoxDecoration(
             color: Colors.black,
             borderRadius: BorderRadius.circular(40),
           ),
           child: Row(
             children: const [
               SizedBox(width: 8,),
               Icon(Icons.search,size: 18,color: Colors.white,),
               SizedBox(width: 8,),
               Text('Search',style: TextStyle(color: Colors.grey,fontSize: 16),)

             ],
           ),
         ),
       ),
        Row(
          children: const [
            SizedBox(width: 8,),
            Icon(Icons.location_on_rounded,size: 18,color: Colors.white,),
            SizedBox(width: 8,),
            Text('563125',style: TextStyle(color: Colors.white,fontSize: 14),)
          ],
        )

      ],
    );
  }
}
