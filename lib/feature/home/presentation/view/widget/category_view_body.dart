import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/cubit/product_cubit/get_product_cubit.dart';
import 'package:pharmacy_app/feature/home/data/model/product_model.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/category_item_sliver_grid.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/home_header.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/product_search_field.dart';

class CategoryViewBody extends StatefulWidget {
  const CategoryViewBody({super.key});

  @override
  State<CategoryViewBody> createState() => _CategoryViewBodyState();
}

class _CategoryViewBodyState extends State<CategoryViewBody> {
  final TextEditingController _searchController = TextEditingController();
  // ignore: unused_field
  List<ProductModel> _filteredProducts = [];

  // get product
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().getProduct();
  }

  // dispose
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // header
        SliverToBoxAdapter(
          child: HomeHeader(
            title: 'التصنيفات',
          ),
        ),

        // sized box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.02,
          ),
        ),

        // search field
        SliverToBoxAdapter(
          child: ProductSearchField(
            controller: _searchController,
            onProductsFiltered: (products) {
              setState(() {
                _filteredProducts = products;
              });
            },
          ),
        ),

        // sized box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.025,
          ),
        ),

        // category item
        CategoryItemSliverGrid(),

        // sized box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.01,
          ),
        ),
      ],
    );
  }
}
