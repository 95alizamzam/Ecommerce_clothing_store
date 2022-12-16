import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingRowWidget extends StatelessWidget {
  const RatingRowWidget({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(int.parse(rating.toString().split('.').first),
              (index) {
            return const Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            );
          }).toList(),
        ),
        SizedBox(width: 4.w),
        Text(rating.toString()),
        SizedBox(width: 4.w),
        const Text(
          ' (7.932 reviews)',
          style: TextStyle(
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
