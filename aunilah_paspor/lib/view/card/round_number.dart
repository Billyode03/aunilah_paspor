import 'package:aunilah_paspor/utils/constants/color_constant.dart';
import 'package:aunilah_paspor/utils/constants/icon_constant.dart';
import 'package:aunilah_paspor/utils/constants/text_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundNumber extends StatelessWidget {
  final String text;
  final Widget? icon;
  final bool isActive;
  final double size;

  const RoundNumber({
    super.key,
    required this.text,
    this.icon,
    this.isActive = false,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? ColorConstant.purple : Colors.transparent,
        border: Border.all(
          color: ColorConstant.purple,
          width: 2,
        ),
      ),
      child: icon ??
          Text(
            text,
            style: TextConstant.poppinBold2.copyWith(
              color: isActive ? Colors.white : ColorConstant.purple,
            ),
          ),
    );
  }
}
