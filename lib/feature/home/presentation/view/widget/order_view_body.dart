import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/home_header.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/order_item.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // sized box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.034,
          ),
        ),
        // header
        SliverToBoxAdapter(
          child: HomeHeader(
            title: 'الطلبات',
          ),
        ),
        // sized box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.02,
          ),
        ),
        // order item
        SliverToBoxAdapter(
          child: OrderItem(),
        ),
      ],
    );
  }
}
