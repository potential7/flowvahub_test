import 'package:flowvahub_test/core/constant/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widget/button_widget.dart';
import '../../../widget/social_share_widget.dart';
import '../../../widget/stack_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C0066),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(ImageAssets.back),
                    SizedBox(width: 50),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Enter to win the Oraimo',
                          style: GoogleFonts.baloo2(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'OpenSnap!',
                          style: GoogleFonts.baloo2(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 140),
              Center(
                child: SizedBox(
                  height: 100,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      // Box platform
                      Box3DPlatform(
                        width: 130,
                        height: 100,
                        color: Color(0xffC087F1),
                        sideColor: Color(0xff6313A9),
                      ),
                      // Product image
                      Positioned(
                        bottom: 90,
                        child: Image.asset(ImageAssets.oraimo, width: 150),
                      ),
                      // Shadow ellipse
                      Positioned(
                        bottom: 85,
                        child: EllipsePlatform(
                          width: 110,
                          height: 10,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: SweepGradient(
                      colors: [
                        Color(0xff2C0066), // dominant
                        Color(0xff553183),
                        Color(0xff2C0066), // dominant again
                        Color(0xff5F2C7A),
                        Color(0xff2C0066), // dominant again
                        Color(0xff553183),
                        Color(0xff2C0066), // more dominance
                      ],
                      stops: [0.0, 0.15, 0.30, 0.45, 0.65, 0.80, 1.0],
                      startAngle: 0.0,
                      endAngle: 6.28318, // 2π
                    ),

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'DRAW ENDS IN',
                        style: GoogleFonts.baloo2(
                          color: Colors.white38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 67,
                              width: 67,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff553183),
                                    Color(0xff5F2C7A),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: FittedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '03',
                                      style: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    Text(
                                      'Days',
                                      style: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              ':',
                              style: GoogleFonts.baloo2(
                                fontSize: 36,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 67,
                              width: 67,
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  center: Alignment(0.2, -0.3),
                                  radius: 1.2,
                                  colors: [
                                    Color(0xff553183),
                                    Color(0xff5F2C7A),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: FittedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '24',
                                      style: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    Text(
                                      'Hours',
                                      style: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              ':',
                              style: GoogleFonts.baloo2(
                                fontSize: 36,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 67,
                              width: 67,
                              decoration: BoxDecoration(
                                gradient: SweepGradient(
                                  colors: [
                                    Color(0xff553183),
                                    Color(0xff5F2C7A),
                                    Color(0xff553183),
                                  ],
                                  startAngle: 0.0,
                                  endAngle: 3.14 * 2,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: FittedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '00',
                                      style: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    Text(
                                      'Mins',
                                      style: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              ':',
                              style: GoogleFonts.baloo2(
                                fontSize: 36,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 67,
                              width: 67,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff553183),
                                    Color(0xff5F2C7A),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: FittedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '00',
                                      style: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    Text(
                                      'Secs',
                                      style: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: double.infinity,
                          height: 23,
                          decoration: BoxDecoration(
                            gradient: SweepGradient(
                              colors: [
                                Color(0xff553183),
                                Color(0xff5F2C7A),
                                Color(0xff553183),
                              ],
                              startAngle: 0.0,
                              endAngle: 3.14 * 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Text(
                              '4327 users have entered so far'.toUpperCase(),
                              style: GoogleFonts.baloo2(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Color(0xff3D1472),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Image.asset(ImageAssets.mic, height: 40, width: 40),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'QUALIFICATION RULE',
                          style: GoogleFonts.baloo2(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'invite at least 2 friends who sign up\non your link and qualify.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.baloo2(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff64438E),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 20),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: ContinueButton(
                                  svgIcon: ImageAssets.good,
                                  onTap: () {},
                                  text: 'You\'ve Entered ',
                                  backgroundColor: Color(0xff058956),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xff6B4C94),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(ImageAssets.avatar),
                                      Container(
                                        height: 15,
                                        width: 0.3,
                                        decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ),
                                      Image.asset(ImageAssets.avatar),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Your entry is confirm for this draw.',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white38,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Divider(
                                  thickness: 0.3,
                                  color: Colors.white24,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Invite yours friends quick and easy.',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: 245,
                                decoration: BoxDecoration(
                                  color: Color(0xff6B4C94),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'https://Bravoo.ref.12419',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      SvgPicture.asset(ImageAssets.copy),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ShareItem(
                                    image: ImageAssets.whatsapp,
                                    label: 'Whatsapp',
                                    onTap: () {},
                                  ),
                                  ShareItem(
                                    image: ImageAssets.x,
                                    label: 'X (Twitter)',
                                    onTap: () {},
                                  ),
                                  ShareItem(
                                    image: ImageAssets.linkedIn,
                                    label: 'LinkedIn',
                                    onTap: () {},
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Divider(
                                  thickness: 0.3,
                                  color: Colors.white38,
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'You referred',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        SvgPicture.asset(ImageAssets.icircle),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(ImageAssets.multiuser),
                                        SizedBox(width: 5),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
