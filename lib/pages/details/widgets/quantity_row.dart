import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class QuantityRowWidget extends StatefulWidget {
  const QuantityRowWidget({super.key, required this.title});
  final String title;

  @override
  State<QuantityRowWidget> createState() => _QuantityRowWidgetState();
}

class _QuantityRowWidgetState extends State<QuantityRowWidget> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        SizedBox(width: 50.w),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                if (number != 0) {
                  setState(() => --number);
                }
              },
              child: Container(
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kGrey),
                ),
                child: const Icon(Icons.remove),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Text(
                number.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => ++number);
              },
              child: Container(
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kGrey),
                ),
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
