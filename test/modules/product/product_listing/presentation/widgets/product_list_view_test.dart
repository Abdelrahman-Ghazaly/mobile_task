import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';
import 'package:nana/modules/product/product_listing/presentation/widgets/product_list_view.dart';
import 'package:nana/modules/product/product_listing/presentation/widgets/widgets.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);
  group('ProductListView Widget Test', () {
    final List<Product> mockProducts = [
      Product(
        id: 1,
        title: 'Test Product',
        description: 'This is a test product description',
        price: 99,
        images: ["https://i.imgur.com/1twoaDy.jpeg"],
        creationAt: '',
        updatedAt: '',
        category: ProductCategory(
          id: 1,
          name: 'name',
          image: 'image',
          creationAt: 'creationAt',
          updatedAt: 'updatedAt',
        ),
      ),
      Product(
        id: 2,
        title: 'Test Product 2',
        description: 'This is a test 2 product description',
        price: 10,
        images: ["https://i.imgur.com/1twoaDy.jpeg"],
        creationAt: '',
        updatedAt: '',
        category: ProductCategory(
          id: 1,
          name: 'name',
          image: 'image',
          creationAt: 'creationAt',
          updatedAt: 'updatedAt',
        ),
      ),
    ];

    testWidgets('renders a list of products', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ProductListView(products: mockProducts),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(ProductListItem), findsNWidgets(mockProducts.length));

      for (final product in mockProducts) {
        expect(find.text(product.title), findsOneWidget);
        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is RichText &&
                widget.text is TextSpan &&
                (widget.text as TextSpan).toPlainText().contains('SAR${product.price}'),
          ),
          findsOneWidget,
        );
      }
    });
  });
}
