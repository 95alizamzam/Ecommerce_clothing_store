import 'package:ecommerce_clothing_store/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/grid_item_model.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    super.key,
    required this.item,
    required this.quantity,
  });

  final GridItemDataModel item;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            width: 70.w,
            height: 70.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.asset(
                item.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Spacer(),
                    const Icon(Icons.more_horiz),
                  ],
                ),
                Text(
                  item.description,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Row(
                  children: [
                    Text(
                      '\$ ${item.price}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Spacer(),
                    Container(
                      width: 80.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                        color: kBlack,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Expanded(
                              child: Icon(
                            Icons.remove,
                            color: kWhite,
                          )),
                          Text(
                            quantity.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: kWhite),
                          ),
                          const Expanded(
                              child: Icon(
                            Icons.add,
                            color: kWhite,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
