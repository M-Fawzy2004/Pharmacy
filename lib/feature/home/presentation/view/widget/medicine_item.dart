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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: kBlueColor, width: 2),
      ),
      child: Stack(
        children: [
          // image
          Positioned.fill(
            child: Column(
              children: [
                // SizedBox
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.012,
                ),
                // image
                CustomImageNetworkAndIconHeart(
                  imageUrl: productModel.image,
                ),
              ],
            ),
          ),

          // text
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, bottom: 10, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // text name
                  Text(
                    productModel.name,
                    style: Styles.fontText16(context),
                  ),
                  // SizedBox
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.012,
                  ),
                  // text price
                  Text(
                    '${productModel.price.toString()} جنيه',
                    style: Styles.fontText13(context).copyWith(
                      color: kBlueColor,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // icon add button
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 17,
                backgroundColor: kBlueColor,
                child: FittedBox(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: kBackgroundColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
