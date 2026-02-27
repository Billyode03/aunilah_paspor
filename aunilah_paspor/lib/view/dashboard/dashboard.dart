import 'package:aunilah_paspor/utils/constants/icon_constant.dart';
import 'package:aunilah_paspor/utils/constants/image_constant.dart';
import 'package:aunilah_paspor/utils/constants/text_constant.dart';
import 'package:aunilah_paspor/view/card_keunggulan/card_keunggulan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            IconConstant.hamburger,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardKeunggulanWidget(
                    text: 'Proses Cepat',
                    text2: 'Pengurusan paspor lebih cepat',
                    image: ImageConstant.ung1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CardKeunggulanWidget(
                    text: 'Di Dampingi',
                    text2: 'Pengurusan paspor lebih cepat',
                    image: ImageConstant.ung2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CardKeunggulanWidget(
                    text: 'Legal & Resmi',
                    text2: 'Pengurusan paspor aman dan terdata',
                    image: ImageConstant.ung3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
