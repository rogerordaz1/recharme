import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recharme/core/utils/colors.dart';

import 'widgets.dart';

class CustomBodySection extends StatelessWidget {
  const CustomBodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.h),
          const HeaderText(),
          const SearchBar(),
          SizedBox(height: 25.h),
          CustomMenuCard(
            text: 'Añadir Recarga',
            icon: Icons.add_call,
            color: colorPink,
            onPressed: () {
              print('He tocado este widget');
            },
          ),
          const RowCardsMenu(
            text: 'Contactos',
            iconLeft: Icons.contact_page,
            iconRight: Icons.phone_android_rounded,
            colorLeft: colorGreen,
            colorRight: colorBlueLight02,
          ),
          const RowCardsMenu(
            text: 'Añadir Recarga',
            iconLeft: Icons.phone_android_rounded,
            iconRight: Icons.phone_android_rounded,
            colorLeft: colorblueLight01,
            colorRight: colorGreenLight,
          ),
        ],
      ),
    );
  }
}
