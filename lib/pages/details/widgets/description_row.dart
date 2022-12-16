import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({super.key});

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  int maxLines = 2;
  final description =
      'Its simple and elegant shape makes it perfect for those of you who like you who want minimalist clothes xxxxxxxxxxxcccccxvsdsbxashbxaslbxasbkl';
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      description,
      trimLines: 2,
      // colorClickableText: Colors.red,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Show more',
      trimExpandedText: '...Show less',
      moreStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent.shade400,
      ),
      style: Theme.of(context).textTheme.bodyMedium,
      delimiter: '....',
      lessStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.redAccent.shade400,
      ),
    );
  }
}
