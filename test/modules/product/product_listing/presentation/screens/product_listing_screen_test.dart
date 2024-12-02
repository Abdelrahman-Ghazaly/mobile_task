import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nana/core/constants/app_keys.dart';
import 'package:nana/core/services/services.dart';
import 'package:nana/modules/product/product_listing/presentation/logic/most_use_poroduct/most_use_product_cubit.dart';
import 'package:nana/modules/product/product_listing/presentation/logic/recommendation/recommendation_cubit.dart';
import 'package:nana/modules/product/product_listing/presentation/logic/snack_product/snack_product_cubit.dart';

import 'product_listing_screen_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<SnackProductsCubit>(),
  MockSpec<MostUseProductsCubit>(),
  MockSpec<RecommendationCubit>(),
])
void main() {
  Widget widgetUnderTest() => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      );

  group('Product Listing Screen', () {
    setUp(() async {
      await injectDependencies();
    });

    tearDown(() {
      di.reset();
    });
    testWidgets('Appbar exists with the correct text', (WidgetTester tester) async {
      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      final appbar = find.byKey(AppKeys.appbar);
      expect(appbar, findsOneWidget);

      final titleText = find.descendant(
        of: appbar,
        matching: find.text('Products'),
      );

      expect(titleText, findsOneWidget);
    });

    testWidgets('correct Widget exists', (WidgetTester tester) async {
      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      final snackProduct = find.byKey(AppKeys.snackProduct);
      final mostUseProducts = find.byKey(AppKeys.mostUseProducts);
      final recommendations = find.byKey(AppKeys.recommendations);

      expect(snackProduct, findsOneWidget);
      expect(mostUseProducts, findsOneWidget);
      expect(recommendations, findsOneWidget);
    });

    group('initState', () {
      late MockSnackProductsCubit mockSnackProductsCubit;
      late MockMostUseProductsCubit mockMostUseProductsCubit;
      late MockRecommendationCubit mockRecommendationCubit;

      setUp(() async {
        mockSnackProductsCubit = MockSnackProductsCubit();
        mockMostUseProductsCubit = MockMostUseProductsCubit();
        mockRecommendationCubit = MockRecommendationCubit();

        di.unregister<SnackProductsCubit>();
        di.unregister<MostUseProductsCubit>();
        di.unregister<RecommendationCubit>();

        di.registerSingleton<SnackProductsCubit>(mockSnackProductsCubit);
        di.registerSingleton<MostUseProductsCubit>(mockMostUseProductsCubit);
        di.registerSingleton<RecommendationCubit>(mockRecommendationCubit);

        when(mockRecommendationCubit.state).thenReturn(const RecommendationState.initial());
        when(mockSnackProductsCubit.state).thenReturn(const SnackProductsState.initial());
        when(mockMostUseProductsCubit.state).thenReturn(const MostUseProductsState());
      });

      tearDown(() {
        di.reset();
      });

      group('ProductListingScreen InitState', () {
        testWidgets('Should call fetch methods for all cubits during initialization', (WidgetTester tester) async {
          await tester.pumpWidget(widgetUnderTest());
          await tester.pump();

          verify(mockSnackProductsCubit.fetchRecommendedProducts()).called(1);
          verify(mockMostUseProductsCubit.fetchMostUseProducts()).called(1);
          verify(mockRecommendationCubit.fetchRecommendedProducts()).called(1);
        });
        testWidgets('Ensures fetch methods are called only once', (WidgetTester tester) async {
          await tester.pumpWidget(widgetUnderTest());
          await tester.pump();

          await tester.pumpWidget(widgetUnderTest());
          await tester.pump();

          verify(mockSnackProductsCubit.fetchRecommendedProducts()).called(1);
          verify(mockMostUseProductsCubit.fetchMostUseProducts()).called(1);
          verify(mockRecommendationCubit.fetchRecommendedProducts()).called(1);
        });
      });
    });
  });
}
