import 'package:flutter/material.dart';

class TextConstant {
  static const TextStyle basePoppins = TextStyle(
    fontFamily: 'Popins',
    color: Colors.purple,
  );

  static final TextStyle poppinRegular = basePoppins.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle poppinMedium = basePoppins.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle poppinItalic = basePoppins.copyWith(
    fontSize: 22,
    fontStyle: FontStyle.italic,
  );
  // static final TextStyle poppinRegular = basePoppins.copyWith(
  //   fontSize: 22,
  //   fontWeight: FontWeight.w600,
  // )
}
