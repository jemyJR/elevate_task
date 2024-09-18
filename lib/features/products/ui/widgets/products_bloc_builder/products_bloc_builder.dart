import 'package:elevate_task/core/widgets/custom_snack_bar.dart';
import 'package:elevate_task/features/products/logic/products_cubit.dart';
import 'package:elevate_task/features/products/ui/widgets/products_bloc_builder/products_loading_shimmer.dart';
import 'package:elevate_task/features/products/ui/widgets/products_bloc_builder/products_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsLoading) {
          return const ProductsLoadingShimmer();
        } else if (state is ProductsSuccess) {
          return ProductsSuccessWidget(
            itemCount: state.products.length,
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          customSnackBar(context, state.error);
        } else {
          return const SizedBox.shrink();
        }
        return const SizedBox.shrink();
      },
    );
  }
}
