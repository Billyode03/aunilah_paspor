import 'package:aunilah_paspor/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';

class TextConstant {
  static const TextStyle basePoppins = TextStyle(
    fontFamily: 'Popins',
    color: ColorConstant.purple,
  );

  static final TextStyle poppinRegular1 = basePoppins.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle poppinRegular2 = basePoppins.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle poppinRegular3 = basePoppins.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle poppinMedium1 = basePoppins.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppinMedium2 = basePoppins.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppinBold1 = basePoppins.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle poppinBold2 = basePoppins.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle poppinBold3 =
      basePoppins.copyWith(fontSize: 12, fontWeight: FontWeight.bold);

  static final TextStyle poppinItalic = basePoppins.copyWith(
    fontSize: 22,
    fontStyle: FontStyle.italic,
  );
}
