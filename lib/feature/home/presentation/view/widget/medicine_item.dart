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
    double screenHeight = MediaQuery.sizeOf(context).height;
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
              // image
              Expanded(
                child: CustomImageNetwork(
                  imageUrl: productModel.image,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),

              // name
              Text(
                productModel.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.fontText16(context),
              ),

              // size box
              SizedBox(
                height: screenHeight * 0.01,
              ),

              // price and icon add
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
