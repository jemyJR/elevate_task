import 'package:elevate_task/core/constants/app_style.dart';
import 'package:elevate_task/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class PriceWithDiscount extends StatelessWidget {
  const PriceWithDiscount({
    super.key,
    required this.price,
    required this.priceBeforeDiscount,
  });
  final num price;
  final num priceBeforeDiscount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'EGP $price',
          style: AppStyle.font14BlackW500,
        ),
        horizontalSpace(10),
        Text(
          '$priceBeforeDiscount EGP',
          style: AppStyle.font10LightBlueW500.copyWith(
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }
}
