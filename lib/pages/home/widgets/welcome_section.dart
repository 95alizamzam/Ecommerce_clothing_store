import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.w, top: 16.h),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Welcome 👋',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Ali Zamzam',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 40.w,
            height: 40.h,
            decoration: const BoxDecoration(
              color: textColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/home_images/profile.png',
                ),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
