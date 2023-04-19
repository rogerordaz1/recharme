import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      //TODO:Buscar como c ponen los tipos de fuentes...
      'RECHARME',
      style: TextStyle(
          color: Colors.white, fontSize: 25.sp, fontWeight: FontWeight.bold),
    );
  }
}
