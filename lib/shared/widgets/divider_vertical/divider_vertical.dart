import 'package:flutter/material.dart';

import 'package:payflow/shared/themes/appcolors.dart';

class DividerVertical extends StatelessWidget {
  final double height;
  const DividerVertical({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      color: AppColors.stroke,
    );
  }
}
