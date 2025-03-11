import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/helper/search_text_field.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/home_header.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/offer_item_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // size box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.02,
          ),
        ),

        // home header
        SliverToBoxAdapter(
          child: HomeHeader(),
        ),

        // size box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.02,
          ),
        ),

        // search
        SliverToBoxAdapter(
          child: SearchTextField(),
        ),

        // size box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.025,
          ),
        ),

        // offers list
        SliverToBoxAdapter(
          child: OfferItemList(),
        ),
      ],
    );
  }
}

