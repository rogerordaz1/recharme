import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/colors.dart';
import 'widgets.dart';

class InfoCardsGridView extends StatelessWidget {
  const InfoCardsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: double.infinity,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.w,
          mainAxisSpacing: 15.h,
          mainAxisExtent: 110.h,
        ),
        children: const [
          SummaryCard(
            color: colorPink,
            iconData: Icons.timer_outlined,
            text: '25',
            subText: 'Retrasadas',
          ),
          SummaryCard(
            color: colorblueLight01,
            iconData: Icons.download_done_sharp,
            text: '10',
            subText: 'Completadas',
          ),
          SummaryCard(
            color: colorGreen,
            iconData: Icons.home,
            text: '0',
            subText: 'Validadas',
          ),
          SummaryCard(
            color: colorMiniText,
            iconData: Icons.monetization_on_outlined,
            text: '10',
            subText: 'Recaudado',
          ),
        ],
      ),
    );
  }
}
