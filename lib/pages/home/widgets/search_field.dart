import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextFieldWidget extends StatelessWidget {
  SearchTextFieldWidget({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 300.w,
      alignment: Alignment.center,
      child: TextField(
        style: Theme.of(context).textTheme.bodyMedium,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: searchFieldBorderColor,
              ),
              borderRadius: BorderRadius.circular(15.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: searchFieldBorderColor,
              ),
              borderRadius: BorderRadius.circular(15.r)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: searchFieldBorderColor,
              ),
              borderRadius: BorderRadius.circular(15.r)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: searchFieldBorderColor,
              ),
              borderRadius: BorderRadius.circular(15.r)),
          hintText: 'Search clothes. . . ',
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          prefixIconConstraints: BoxConstraints(
            maxWidth: 40.w,
            maxHeight: 40.w,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: const Image(
              image: AssetImage(
                'assets/icons/search_icon.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
