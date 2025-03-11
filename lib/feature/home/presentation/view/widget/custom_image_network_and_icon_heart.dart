import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';

class CustomImageNetworkAndIconHeart extends StatelessWidget {
  const CustomImageNetworkAndIconHeart({
    super.key,
    required this.imageUrl,
    this.onTap,
  });

  final String imageUrl;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // image
            Container(
              height: MediaQuery.sizeOf(context).height * 0.18,
              width: MediaQuery.sizeOf(context).width * 0.4,
              color: kBackgroundColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: MediaQuery.sizeOf(context).height * 0.12,
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.image,
                        color: Colors.red,
                        size: 50,
                      );
                    },
                  ),
                ),
              ),
            ),

            // heart icon
            Positioned(
              top: -2,
              right: 5,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: kBlueColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
