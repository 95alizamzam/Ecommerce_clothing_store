import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:ecommerce_clothing_store/pages/cart/widgets/cart_appbar.dart';
import 'package:ecommerce_clothing_store/pages/cart/widgets/cart_items.dart';
import 'package:ecommerce_clothing_store/pages/cart/widgets/payment_btn.dart';
import 'package:ecommerce_clothing_store/pages/cart/widgets/shipping_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/grid_item_model.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  List<GridItemDataModel> cartItems = [
    GridItemDataModel('assets/grid_list_images/item4.png',
        'Modern light clothes', 'Dress modern', true, 212.99, 5.0),
    GridItemDataModel('assets/grid_list_images/item1.png',
        'Modern light clothes', 'Dress modern', false, 212.99, 4.0),
    GridItemDataModel('assets/grid_list_images/item2.png',
        'Modern light clothes', 'Dress modern', true, 212.99, 5.0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            const CartAppBarWidget(),
            SizedBox(height: 20.h),
            SizedBox(
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.all(10.w),
                itemBuilder: (context, index) => CartItemsList(
                  item: cartItems[index],
                  quantity: index + 1,
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: cartItems.length,
              ),
            ),
            SizedBox(height: 48.h),
            const ShippingInfoWidget(),
            const Spacer(),
            const PaymentBtnWidget(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
