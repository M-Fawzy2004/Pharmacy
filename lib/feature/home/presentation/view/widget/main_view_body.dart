import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/home/presentation/view/home_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.currentViewIndex});

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [
        HomeView(),
        SizedBox(),
        SizedBox(),
        SizedBox(),
      ],
    );
  }
}
