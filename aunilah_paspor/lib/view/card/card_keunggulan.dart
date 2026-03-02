import 'package:aunilah_paspor/utils/constants/color_constant.dart';
import 'package:aunilah_paspor/utils/constants/icon_constant.dart';
import 'package:aunilah_paspor/utils/constants/text_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardKeunggulanWidget extends StatelessWidget {
  final String text;
  final String text2;
  final String image;
  final String svg;

  final Color? textColor;
  final Widget? icon;
  final double? spacing;

  const CardKeunggulanWidget({
    super.key,
    required this.text,
    required this.text2,
    required this.image,
    required this.svg,
    this.textColor,
    this.icon,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98,
      height: 240,
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
          Image.asset(
            image,
            height: 150,
            fit: BoxFit.contain,
          ),
          //TODO Text,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svg,
                height: 17,
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextConstant.poppinBold3,
                  overflow: TextOverflow.visible,
                  softWrap: true,
                  maxLines: 6,
                ),
              ),
            ],
          ),
          Text(
            text2,
            textAlign: TextAlign.center,
            style: TextConstant.poppinRegular3,
            softWrap: true,
            maxLines: 4,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
