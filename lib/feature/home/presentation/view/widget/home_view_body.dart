import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/core/cubit/product_cubit/get_product_cubit.dart';
import 'package:pharmacy_app/feature/home/data/model/product_model.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/home_header.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/medicine_item_sliver_bloc_builder.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/medicine_item_sliver_grid.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/product_search_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final TextEditingController _searchController = TextEditingController();
  List<ProductModel> _filteredProducts = [];

  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().getProduct();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // header
        SliverToBoxAdapter(
          child: HomeHeader(),
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

        // medicine item
        if (_filteredProducts.isNotEmpty) ...[
          MedicineItemSliverGrid(
            product: _filteredProducts,
          ),
        ] else ...[
          MedicineItemSliverBlocBuilder(),
        ],
      ],
    );
  }

  // dispose
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
