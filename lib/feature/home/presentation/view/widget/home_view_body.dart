import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/constant.dart';
import 'package:pharmacy_app/core/cubit/product_cubit/get_product_cubit.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';
import 'package:pharmacy_app/core/helper/search_text_field.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/home_header.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/medicine_item_sliver_bloc_builder.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/offer_item_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getProduct();
    super.initState();
  }

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

        // size box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.01,
          ),
        ),

        // text product
        SliverToBoxAdapter(
          child: Text(
            'المنتجات',
            style: Styles.fontText16(context).copyWith(
              color: kBlueColor,
            ),
          ),
        ),
        // size box
        SliverToBoxAdapter(
          child: SizedBox(
            height: screenHeight * 0.01,
          ),
        ),

        // medicine grid
        MedicineItemSliverBlocBuilder(),
      ],
    );
  }
}
