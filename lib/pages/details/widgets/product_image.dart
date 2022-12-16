import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';
import '../../../models/grid_item_model.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.model});
  final GridItemDataModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 340.w,
          width: double.maxFinite,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image(
              image: AssetImage(model.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20.h,
          right: 0.w,
          left: 0.w,
          child: SizedBox(
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const CircleAvatar(
                      backgroundColor: kBlack,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: kWhite,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: kBlack,
                      child: Icon(
                        model.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: kWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
