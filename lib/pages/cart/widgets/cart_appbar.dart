import 'package:ecommerce_clothing_store/pages/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class CartAppBarWidget extends StatelessWidget {
  const CartAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (_) => const HomeScreen(),
                ),
                (route) => false,
              );
            },
            child: Container(
              width: 30.w,
              height: 30.w,
              decoration: BoxDecoration(
                color: kTransparent,
                shape: BoxShape.circle,
                border: Border.all(color: kGrey.withOpacity(.5)),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: kBlack,
              ),
            ),
          ),
          const Spacer(),
          Text(
            'Checkout',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(right: 8.w),
            width: 30.w,
            height: 30.w,
            decoration: BoxDecoration(
              color: kTransparent,
              shape: BoxShape.circle,
              border: Border.all(color: kGrey.withOpacity(.5)),
            ),
            child: Image.asset('assets/icons/cart_more.png'),
          ),
        ],
      ),
    );
  }
}
