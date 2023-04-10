
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      height: 35.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25.w),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.w,
            )
          ]),
      child: Row(
        children: [
          SizedBox(width: 10.w),
          Icon(
            Icons.search,
            size: 20.w,
            color: Colors.grey,
          ),
          SizedBox(width: 10.w),
          Text(
            'Buscar',
            style: TextStyle(fontSize: 14.sp, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
