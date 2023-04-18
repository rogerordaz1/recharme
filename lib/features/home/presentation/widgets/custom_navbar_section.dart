import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 80.w,
      leading: Icon(
        Icons.menu,
        color: Colors.white,
        size: 25.w,
      ),
      actions: [
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
        SizedBox(
          width: 25.w,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 60.h);
}
