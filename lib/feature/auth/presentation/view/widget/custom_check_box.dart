import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecker,
    required this.onChanged,
  });

  final bool isChecker;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecker);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: isChecker ? kBlueColor : Color(0xffE5EBF2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: isChecker
            ? Icon(
                Icons.check,
                color: Colors.white,
                size: 17,
              )
            : null,
      ),
    );
  }
}
