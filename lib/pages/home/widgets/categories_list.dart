import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  final List<CategoryModel> categories = [
    CategoryModel('All Items', 'assets/icons/all_items.png'),
    CategoryModel('Dresss', 'assets/icons/dress.png'),
    CategoryModel('Hat', 'assets/icons/hat.png'),
    CategoryModel('Watch', 'assets/icons/watch.png'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: currentIndex == index ? kLightBlack : kWhite,
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: currentIndex == index ? kTransparent : kGrey,
              ),
            ),
            width: 100.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  categories[index].image,
                  color: currentIndex == index ? kWhite : kBlack,
                  width: 16.w,
                  height: 16.w,
                ),
                SizedBox(width: 12.w),
                Text(
                  categories[index].name,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: currentIndex == index ? kWhite : kBlack,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 15.w),
        itemCount: categories.length,
      ),
    );
  }
}

class CategoryModel {
  final String name, image;

  CategoryModel(this.name, this.image);
}
