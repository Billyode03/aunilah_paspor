import 'package:aunilah_paspor/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';

class TextConstant {
  static const TextStyle basePoppins = TextStyle(
    fontFamily: 'Popins',
    color: ColorConstant.purple,
  );

  static final TextStyle poppinRegular = basePoppins.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle poppinMedium = basePoppins.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppinBold = basePoppins.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle poppinRegularBig = basePoppins.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle poppinItalic = basePoppins.copyWith(
    fontSize: 22,
    fontStyle: FontStyle.italic,
  );
}
