import 'package:flutter/material.dart';

import '../../domain/entities/product.dart';
import 'product_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
    required this.products,
  });
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) => ProductListItem(product: products[index]),
        separatorBuilder: (context, index) => const SizedBox.square(dimension: 6),
      ),
    );
  }
}
