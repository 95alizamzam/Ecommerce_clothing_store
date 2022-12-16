import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class PaymentBtnWidget extends StatelessWidget {
  const PaymentBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kBlack,
        borderRadius: BorderRadius.circular(45.r),
      ),
      child: Text(
        'Pay',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: kWhite,
              fontSize: 22.sp,
            ),
      ),
    );
  }
}
