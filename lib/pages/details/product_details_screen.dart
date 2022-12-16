import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:ecommerce_clothing_store/pages/details/widgets/add_to_cart_btn.dart';
import 'package:ecommerce_clothing_store/pages/details/widgets/colors_sizes_row.dart';
import 'package:ecommerce_clothing_store/pages/details/widgets/description_row.dart';
import 'package:ecommerce_clothing_store/pages/details/widgets/product_image.dart';
import 'package:ecommerce_clothing_store/pages/details/widgets/quantity_row.dart';
import 'package:ecommerce_clothing_store/pages/details/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/grid_item_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final GridItemDataModel model;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                ProductImage(model: model),
                SizedBox(height: 24.h),
                QuantityRowWidget(title: model.title),
                SizedBox(height: 8.h),
                RatingRowWidget(rating: model.rating),
                SizedBox(height: 8.h),
                const DescriptionWidget(),
                SizedBox(height: 16.h),
                const Divider(color: kGrey, indent: 20, endIndent: 20),
                SizedBox(height: 20.h),
                ColorsAndSizesWidget(),
                SizedBox(height: 20.h),
                const AddToCartBtn(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
