import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  static const routeName = '/category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: const CategoryViewBody(),
      ),
    );
  }
}
