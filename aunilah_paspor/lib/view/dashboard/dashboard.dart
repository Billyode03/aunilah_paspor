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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            // Text(
            //   'Halo, Selamat Datang di....',
            //   style: TextConstant.poppinRegularBig,
            // ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(
                ImageConstant.car1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Jasa Pengurusan Paspor Cepat & Aman',
                style: TextConstant.poppinBold,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Offline & Online ● Pendampingan Sampai Jadi ',
              style: TextConstant.poppinRegular,
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardKeunggulanWidget(
                    svg: IconConstant.thunder,
                    text: 'Proses Cepat',
                    text2: 'Pengurusan paspor lebih cepat',
                    image: ImageConstant.ung1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CardKeunggulanWidget(
                    svg: IconConstant.checkGreen,
                    text: 'Di Dampingi',
                    text2: 'Pengurusan mendapatkan bimbingan',
                    image: ImageConstant.ung2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CardKeunggulanWidget(
                    svg: IconConstant.checkBlue,
                    text: 'Legal & Resmi',
                    text2: 'Pengurusan paspor aman dan terdata',
                    image: ImageConstant.ung3,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Text(
              'Layanan / Paket Jasa',
              style: TextConstant.poppinBold,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
