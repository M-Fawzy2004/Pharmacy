import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/offers_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OfferItemList extends StatefulWidget {
  const OfferItemList({super.key});

  @override
  State<OfferItemList> createState() => _OfferItemListState();
}

class _OfferItemListState extends State<OfferItemList> {
  final PageController _pageController = PageController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.18,
          child: PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: _pageController,
            itemCount: 3,
            onPageChanged: (index) {
              setState(() {
                activeIndex = index;
              });
            },
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: OffersItem(),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.01,
        ),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            dotColor: Colors.grey,
            activeDotColor: Colors.blue,
            dotHeight: 8,
            dotWidth: 8,
          ),
        ),
      ],
    );
  }
}
