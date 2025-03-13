import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';
import 'package:pharmacy_app/feature/home/data/model/product_model.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/custom_image_network_and_icon_heart.dart';

class MedicineItem extends StatelessWidget {
  const MedicineItem({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kBlueColor, width: 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // صورة المنتج
              Expanded(
                child: CustomImageNetwork(
                  imageUrl: productModel.image,
                ),
              ),
              const SizedBox(height: 5),

              // اسم المنتج
              Text(
                productModel.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.fontText16(context),
              ),
              const SizedBox(height: 5),

              // السعر وأيقونة الإضافة
              Row(
                children: [
                  Text(
                    '${productModel.price} جنيه',
                    style: Styles.fontText13(context).copyWith(
                      color: kBlueColor,
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: kBlueColor,
                    child: FittedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
