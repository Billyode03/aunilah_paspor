import 'package:aunilah_paspor/global/button_global_widget.dart';
import 'package:aunilah_paspor/utils/constants/color_constant.dart';
import 'package:aunilah_paspor/utils/constants/icon_constant.dart';
import 'package:aunilah_paspor/utils/constants/text_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardService extends StatelessWidget {
  final Widget? image;
  final Widget? button;
  final String? text;

  const CardService({
    super.key,
    this.image,
    this.button,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      // height: 230,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(27, 132, 26, 130),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorConstant.purple),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null)
            SizedBox(
              height: 120,
              child: image,
            ),

          /// TEXT OPTIONAL
          if (text != null) ...[
            const SizedBox(height: 8),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextConstant.poppinBold1,
            ),
          ],

          /// BUTTON OPTIONAL
          if (button != null) ...[
            const SizedBox(height: 12),
            button!,
          ],
        ],
      ),
    );
  }
}
