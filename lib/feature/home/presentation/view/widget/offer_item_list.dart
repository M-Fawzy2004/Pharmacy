import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/offers_item.dart';

class OfferItemList extends StatelessWidget {
  const OfferItemList({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: const OffersItem(),
        ),
      ),
    );
  }
}
