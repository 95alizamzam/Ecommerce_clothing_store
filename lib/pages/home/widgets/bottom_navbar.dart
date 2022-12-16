import 'package:ecommerce_clothing_store/pages/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class BottomNaBar extends StatefulWidget {
  const BottomNaBar({super.key});

  @override
  State<BottomNaBar> createState() => _BottomNaBarState();
}

class _BottomNaBarState extends State<BottomNaBar> {
  final List<String> icons = [
    'assets/icons/bottom_navbar1.png',
    'assets/icons/bottom_navbar2.png',
    'assets/icons/bottom_navbar3.png',
    'assets/icons/bottom_navbar4.png',
  ];
  int selectedPage = 0;
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
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: icons.map((e) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedPage = icons.indexOf(e);
                });
                if (icons.indexOf(e) == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => CartScreen()),
                  );
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: textColor,
                      radius: 25,
                      child: Image(
                        image: AssetImage(e),
                        width: 24.w,
                        height: 24.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  icons.indexOf(e) == selectedPage
                      ? Container(
                          width: 5.w,
                          height: 5.w,
                          decoration: const BoxDecoration(
                            color: kWhite,
                            shape: BoxShape.circle,
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            );
          }).toList()),
    );
  }
}
