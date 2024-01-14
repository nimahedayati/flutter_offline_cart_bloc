import 'package:flutter/material.dart';
import 'package:flutter_offline_cart_bloc/app/extensions.dart';
import 'package:flutter_offline_cart_bloc/models/product_model.dart';
import 'package:flutter_offline_cart_bloc/resources/colors_manager.dart';
import 'package:flutter_offline_cart_bloc/resources/fonts_manager.dart';
import 'package:flutter_offline_cart_bloc/resources/styles_manager.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Image.network(
              product.image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          16.gap,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: getBoldStyle(fontSize: AppFontSize.s14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                4.gap,
                Text(
                  product.description,
                  style: getRegularStyle(color: AppColors.subtext, fontSize: AppFontSize.s10),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                8.gap,
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: getBlackStyle(fontSize: AppFontSize.s16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
