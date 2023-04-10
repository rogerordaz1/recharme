import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavSection extends StatelessWidget {
  const CustomNavSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25.w,
        right: 25.w,
        top: 25.h,
        bottom: 15.h,
      ),
      child: Row(
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 25.w,
          ),
          const Spacer(),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 25.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Icon(
            Icons.person_pin,
            color: Colors.white,
            size: 25.w,
          ),
        ],
      ),
    );
  }
}
