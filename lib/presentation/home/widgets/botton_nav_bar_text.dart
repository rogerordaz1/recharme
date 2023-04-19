import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/colors.dart';

class BottonNavBarText extends StatelessWidget {
  const BottonNavBarText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12.sp,
        color: colorMiniText,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
