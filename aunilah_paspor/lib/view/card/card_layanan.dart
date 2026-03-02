import 'package:aunilah_paspor/utils/constants/color_constant.dart';
import 'package:aunilah_paspor/utils/constants/icon_constant.dart';
import 'package:aunilah_paspor/utils/constants/text_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardLayanan extends StatelessWidget {
  final String text;
  final Widget? image;

  final Color? textColor;
  final Widget? icon;
  final double? spacing;

  const CardLayanan({
    super.key,
    required this.text,
    required this.image,
    this.textColor,
    this.icon,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 110,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(27, 132, 26, 130),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(
            color: ColorConstant.purple,
          )),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          if (image != null)
            SizedBox(
              height: 90,
              child: Center(child: image),
            ),
          const SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextConstant.poppinBold2,
            softWrap: true,
            maxLines: 4,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
