import 'package:flutter/cupertino.dart';
import 'package:pharmacy_app/feature/home/data/model/product_model.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/medicine_item.dart';

class MedicineItemSliverGrid extends StatelessWidget {
  const MedicineItemSliverGrid({super.key, required this.product});

  final List<ProductModel> product;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 7,
        crossAxisSpacing: 7,
        childAspectRatio: 0.75,
      ),
      itemCount: product.length,
      itemBuilder: (context, index) {
        return MedicineItem(
          productModel: product[index],
        );
      },
    );
  }
}
