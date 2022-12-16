import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

enum Sized { small, medium, large, xlarge }

class ColorsAndSizesWidget extends StatelessWidget {
  ColorsAndSizesWidget({super.key});
  final List<Color> colors = [
    const Color(0xff1B2028).withOpacity(.3),
    const Color(0xff1B2028),
    const Color(0xff292526),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Choose Size',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 8.h),
            Row(
              children: List.generate(4, (index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 8.w),
                  width: 30.w,
                  height: 30.w,
                  decoration: BoxDecoration(
                    color: index == 2 ? kBlack : kTransparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: kGrey),
                  ),
                  child: Text(
                    Sized.values[index].name.substring(0, 1).toUpperCase(),
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: index == 2 ? kWhite : textColor,
                        ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Colors',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 8.h),
            Row(
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.only(right: 8.w),
                  width: 30.w,
                  height: 30.w,
                  decoration: BoxDecoration(
                    color: colors[index],
                    shape: BoxShape.circle,
                    border: Border.all(color: kGrey),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
