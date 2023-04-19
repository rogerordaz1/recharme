import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_menu_card.dart';
import 'widgets.dart';

class RowCardsMenu extends StatelessWidget {
  const RowCardsMenu({
    super.key,
    required this.text,
    required this.iconLeft,
    required this.iconRight,
    required this.colorRight,
    required this.colorLeft,
  });

  final String text;
  final IconData iconLeft;
  final IconData iconRight;
  final Color colorRight;
  final Color colorLeft;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomMenuCard(
            text: text,
            icon: iconLeft,
            color: colorLeft,
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: CustomMenuCard(
            text: text,
            icon: iconRight,
            color: colorRight,
          ),
        ),
      ],
    );
  }
}
