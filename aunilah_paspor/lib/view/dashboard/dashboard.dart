import 'package:aunilah_paspor/utils/constants/icon_constant.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // IconButton(onPressed: (){}, icon: IconConstant.call)
          // IconConstant.hamburger
        ],
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
                "Dashboard Screen bro",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
