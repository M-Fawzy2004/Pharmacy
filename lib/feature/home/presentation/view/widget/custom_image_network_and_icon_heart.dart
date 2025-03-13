import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';

class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork({
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
        child: Column(
          children: [
            // image
            Container(
              height: MediaQuery.sizeOf(context).height * 0.17,
              width: MediaQuery.sizeOf(context).width,
              color: kBackgroundColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: MediaQuery.sizeOf(context).height * 0.1,
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
          ],
        ),
      ),
    );
  }
}
