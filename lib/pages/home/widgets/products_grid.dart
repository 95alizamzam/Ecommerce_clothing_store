import 'package:ecommerce_clothing_store/pages/home/widgets/product_grid_item_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../models/grid_item_model.dart';

class ProductsGrid extends StatelessWidget {
  ProductsGrid({super.key});

  final List<GridItemDataModel> items = [
    GridItemDataModel('assets/grid_list_images/item3.png',
        'Modern light clothes', 'Dress modern', false, 212.99, 3.5),
    GridItemDataModel('assets/grid_list_images/item4.png',
        'Modern light clothes', 'Dress modern', true, 212.99, 5.0),
    GridItemDataModel('assets/grid_list_images/item1.png',
        'Modern light clothes', 'Dress modern', false, 212.99, 4.0),
    GridItemDataModel('assets/grid_list_images/item2.png',
        'Modern light clothes', 'Dress modern', true, 212.99, 5.0),
    GridItemDataModel('assets/grid_list_images/item3.png',
        'Modern light clothes', 'Dress modern', false, 212.99, 3.5),
    GridItemDataModel('assets/grid_list_images/item4.png',
        'Modern light clothes', 'Dress modern', false, 212.99, 5.0),
    GridItemDataModel('assets/grid_list_images/item2.png',
        'Modern light clothes', 'Dress modern', true, 212.99, 5.0),
    GridItemDataModel('assets/grid_list_images/item1.png',
        'Modern light clothes', 'Dress modern', false, 212.99, 4.0),
    GridItemDataModel('assets/grid_list_images/item4.png',
        'Modern light clothes', 'Dress modern', false, 212.99, 5.0),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) =>
            ProductGridItemShape(model: items[index]),
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        crossAxisSpacing: 20.w,
        mainAxisSpacing: 10.h,
      ),
    );
  }
}
