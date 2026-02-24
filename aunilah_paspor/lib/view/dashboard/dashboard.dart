import 'package:aunilah_paspor/utils/constants/icon_constant.dart';
import 'package:aunilah_paspor/utils/constants/text_constant.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text(
              "Halo, Selamat Datang di",
              style: TextConstant.poppinRegular,
            )),
            Image.asset(
              IconConstant.location_,
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
