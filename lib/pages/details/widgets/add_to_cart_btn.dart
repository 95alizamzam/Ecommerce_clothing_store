import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 60.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kBlack,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage(
              'assets/icons/cart_icon.png',
            ),
            width: 24.w,
            height: 24.w,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 10.w),
          Text(
            'Add to Cart | \$100.99',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: kWhite,
                  fontSize: 16.sp,
                ),
          ),
          SizedBox(width: 10.w),
          Text(
            ' \$190.99',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: kWhite,
                  fontSize: 10.sp,
                  decoration: TextDecoration.lineThrough,
                ),
          ),
        ],
      ),
    );
  }
}
