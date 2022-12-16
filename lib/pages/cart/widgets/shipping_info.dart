import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingInfoWidget extends StatelessWidget {
  const ShippingInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Shipping Information',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            width: 327.w,
            height: 62.h,
            decoration: BoxDecoration(
              color: const Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Row(
              children: [
                Image(
                  width: 45.w,
                  height: 30.h,
                  image: const AssetImage('assets/icons/visa.png'),
                ),
                SizedBox(width: 12.w),
                const Text('**** **** **** 2143'),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_down, color: kBlack)
              ],
            ),
          ),
          SizedBox(height: 24.h),
          Row(
            children: const [
              Text('Total (6 items)'),
              Spacer(),
              Text('\$131.97'),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: const [
              Text('Shipping Fee'),
              Spacer(),
              Text('\$.0.00'),
            ],
          ),
          Divider(
            color: Colors.grey.shade200,
            endIndent: 20.w,
            indent: 20.w,
          ),
          SizedBox(height: 16.h),
          Row(
            children: const [
              Text('Sub Total'),
              Spacer(),
              Text('\$131.97'),
            ],
          ),
        ],
      ),
    );
  }
}
