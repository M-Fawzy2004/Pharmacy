import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({super.key});

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int quantity = 1;

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // delete
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[400],
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: decreaseQuantity,
                icon: Icon(Icons.remove),
                color: Colors.red,
              ),

              // count of quantity
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  '$quantity',
                  style: TextStyle(
                    fontSize: 18,
                    color: kBlueColor,
                  ),
                ),
              ),

              // add
              IconButton(
                onPressed: increaseQuantity,
                icon: Icon(Icons.add),
                color: kBlueColor,
              ),
            ],
          ),
        ),

        // size box
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.02,
        ),

        // delete
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[400],
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_outline),
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
