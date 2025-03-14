import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  static const routeName = '/order';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: OrderViewBody(),
      ),
    );
  }
}
