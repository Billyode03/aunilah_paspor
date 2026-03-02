import 'package:aunilah_paspor/global/button_global_widget.dart';
import 'package:aunilah_paspor/utils/constants/color_constant.dart';
import 'package:aunilah_paspor/utils/constants/icon_constant.dart';
import 'package:aunilah_paspor/utils/constants/image_constant.dart';
import 'package:aunilah_paspor/utils/constants/text_constant.dart';
import 'package:aunilah_paspor/view/card/card_bukti.dart';
import 'package:aunilah_paspor/view/card/card_keunggulan.dart';
import 'package:aunilah_paspor/view/card/card_layanan.dart';
import 'package:aunilah_paspor/view/card/card_service.dart';
import 'package:aunilah_paspor/view/card/round_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final heroKey = GlobalKey();
  final layananKey = GlobalKey();
  final buktiKey = GlobalKey();
  final kontakKey = GlobalKey();
  final _fabKey = GlobalKey<ExpandableFabState>();

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

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
      body: SizedBox.expand(
        child: _buildContent(),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: _buildFab(),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),

      //TODO HERO SECTION
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            key: heroKey,
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
              style: TextConstant.poppinBold1,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 5),
          Text('Offline & Online ● Pendampingan Sampai Jadi ',
              style: TextConstant.poppinRegular2),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonGlobalWidget(
                buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                buttonColor: const Color.fromARGB(255, 157, 33, 155),
                textColor: Colors.white,
                text: 'Hubungi Kami',
                icon: SvgPicture.asset(IconConstant.call),
                onTap: () {
                  openWhatsApp();
                },
              ),
              SizedBox(
                width: 10,
              ),
              ButtonGlobalWidget(
                buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                buttonColor: const Color.fromARGB(255, 255, 195, 64),
                text: 'Lokasi Kantor',
                textColor: ColorConstant.dark,
                icon: SvgPicture.asset(IconConstant.locationPurple),
                onTap: () {
                  openMaps();
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Keunggulan',
            style: TextConstant.poppinBold1,
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

          //TODO LAYANAN
          Text(
            'Layanan / Paket Jasa',
            style: TextConstant.poppinBold1,
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.count(
            key: layananKey,
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(5),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.1,
            children: [
              CardLayanan(
                text: 'Paspor Baru',
                image: Image.asset(
                  ImageConstant.gridSa,
                ),
              ),
              CardLayanan(
                text: 'Perpanjang Paspor',
                image: Image.asset(
                  ImageConstant.griDu,
                ),
              ),
              CardLayanan(
                text: 'Paspor Hilang',
                image: Image.asset(
                  ImageConstant.griEm,
                ),
              ),
              CardLayanan(
                text: 'Pendataan Baru',
                image: Image.asset(
                  ImageConstant.griTu,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(27, 132, 26, 130),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  height: 110,
                  width: 400,
                  ImageConstant.alurPros,
                ),
                SizedBox(
                  height: 10,
                ),

                //TODO BUKTI
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    RoundNumber(text: '1'),
                    SizedBox(
                      width: 31,
                    ),
                    RoundNumber(text: '2'),
                    SizedBox(
                      width: 31,
                    ),
                    RoundNumber(text: '3'),
                    SizedBox(
                      width: 31,
                    ),
                    RoundNumber(text: '4'),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //TODO KONTAK
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              key: buktiKey,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardBukti(
                  image: ImageConstant.cardBukti,
                ),
                SizedBox(
                  width: 5,
                ),
                CardBukti(
                  image: ImageConstant.cardBukti2,
                ),
                SizedBox(
                  width: 5,
                ),
                CardBukti(
                  image: ImageConstant.cardBukti3,
                ),
                SizedBox(
                  width: 5,
                ),
                CardBukti(
                  image: ImageConstant.cardBukti4,
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //TODO ======== KONTAK ========
          CardService(
            key: kontakKey,
            image: Image.asset(ImageConstant.hubKam),
            button: ButtonGlobalWidget(
              text: 'Hubungi Kami',
              textColor: ColorConstant.semiGrey,
              buttonColor: ColorConstant.purple,
              buttonWidth: 150,
              icon: SvgPicture.asset(
                IconConstant.waWhite,
              ),
              onTap: () {
                openWhatsApp();
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CardService(
            image: Image.asset(ImageConstant.alama),
            button: ButtonGlobalWidget(
              text: 'Lokasi Kami',
              textColor: ColorConstant.semiGrey,
              buttonColor: ColorConstant.purple,
              buttonWidth: 120,
              icon: SvgPicture.asset(
                IconConstant.locationWhite,
              ),
              onTap: () {
                openMaps();
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildFab() {
    return ExpandableFab(
      key: _fabKey,
      distance: 70,
      type: ExpandableFabType.up,
      openButtonBuilder: RotateFloatingActionButtonBuilder(
        child: Image.asset(
          IconConstant.logoWhite,
          height: 40,
          width: 40,
        ),
        backgroundColor: ColorConstant.purple,
      ),
      closeButtonBuilder: RotateFloatingActionButtonBuilder(
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
        backgroundColor: ColorConstant.purple,
      ),
      children: [
        _fabItem(Icons.home, "Beranda", () => scrollTo(heroKey)),
        _fabItem(Icons.grid_view, "Layanan", () => scrollTo(layananKey)),
        _fabItem(Icons.verified, "Testimoni", () => scrollTo(buktiKey)),
        _fabItemCustom(
          SvgPicture.asset(IconConstant.waWhite, height: 18),
          "WhatsApp",
          openWhatsApp,
        ),
      ],
    );
  }

  Widget _fabItem(IconData icon, String label, VoidCallback onTap) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: ColorConstant.purple,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                blurRadius: 6,
                spreadRadius: 1,
                color: ColorConstant.gold,
              )
            ],
          ),
          child: Text(
            label,
            style: TextStyle(
              color: ColorConstant.semiGrey,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(width: 8),
        FloatingActionButton.small(
          heroTag: label,
          backgroundColor: ColorConstant.purple,
          onPressed: onTap,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _fabItemCustom(Widget icon, String label, VoidCallback onTap) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
        ),
        const SizedBox(width: 8),
        FloatingActionButton.small(
          heroTag: label,
          backgroundColor: Colors.green,
          onPressed: onTap,
          child: icon,
        ),
      ],
    );
  }

  Future<void> openWhatsApp() async {
    _fabKey.currentState?.toggle();
    const phone = '6285331458257'; // ganti nomor
    const message = 'Assalamu\'alaikum, saya mau Konsul tentang jasa paspor';

    final url = Uri.parse(
      'https://wa.me/$phone?text=${Uri.encodeComponent(message)}',
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Tidak bisa buka WhatsApp');
    }
  }

  Future<void> openMaps() async {
    final googleUrl = Uri.parse(
        "google.navigation:q=Jl.+Letjend+Sutoyo+No.111,+Waru,+Sidoarjo");

    final mapsUrl = Uri.parse(
        "https://www.google.com/maps/dir/?api=1&destination=Jl.+Letjend+Sutoyo+No.111,+Waru,+Sidoarjo");

    if (await canLaunchUrl(googleUrl)) {
      await launchUrl(googleUrl);
    } else {
      await launchUrl(mapsUrl, mode: LaunchMode.externalApplication);
    }
  }
}
