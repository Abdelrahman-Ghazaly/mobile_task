import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';
import 'package:nana/modules/product/product_listing/presentation/widgets/widgets.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);
  group('ProductListItem Widget Test', () {
    final Product mockProduct = Product(
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
        ));

    testWidgets('renders correctly with product details', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ProductListItem(
              product: mockProduct,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      final imageFinder = find.byType(Image);
      expect(imageFinder, findsOneWidget);
      expect((tester.widget<Image>(imageFinder).image as NetworkImage).url, mockProduct.images.first);

      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is RichText &&
              widget.text is TextSpan &&
              (widget.text as TextSpan).toPlainText().contains('SAR${mockProduct.price}'),
        ),
        findsOneWidget,
      );

      expect(find.text(mockProduct.title), findsOneWidget);

      expect(find.byIcon(Icons.add), findsOneWidget);
    });
  });
}
