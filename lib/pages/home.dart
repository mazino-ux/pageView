import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

class Home extends StatelessWidget {
    final PageController _pageController = PageController();

  Home({super.key});
//   const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: [
            PageView(controller: _pageController, children: pages),
            Container(
                padding: const EdgeInsets.only(bottom: 24.0),
                alignment: Alignment.bottomCenter,
                // color: Colors.black,
                child: SmoothPageIndicator(
                    effect: WormEffect(
                        dotColor: Colors.grey,
                        activeDotColor: const Color.fromARGB(255, 181, 13, 187),
                        dotHeight: 12.0,
                        dotWidth: 12.0,
                    ),
                    controller: _pageController, count: pages.length
                ),

            )
        ],
       ),
    );
  }
}

const pages = [
  Page1(),
  Page2(),
  Page3(),
];