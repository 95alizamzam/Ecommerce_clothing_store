import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:ecommerce_clothing_store/pages/home/widgets/bottom_navbar.dart';
import 'package:ecommerce_clothing_store/pages/home/widgets/categories_list.dart';
import 'package:ecommerce_clothing_store/pages/home/widgets/products_grid.dart';
import 'package:ecommerce_clothing_store/pages/home/widgets/search_field.dart';
import 'package:ecommerce_clothing_store/pages/home/widgets/welcome_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: null,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const WelcomeSection(),
              Row(
                children: [
                  Expanded(child: SearchTextFieldWidget()),
                  SizedBox(width: 16.w),
                  Container(
                    width: 40.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff292526),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/search_options.svg',
                        color: kWhite,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              const CategoriesList(),
              SizedBox(height: 22.h),
              ProductsGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNaBar(),
    );
  }
}
