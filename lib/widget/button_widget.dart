import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final String? svgIcon;
  final VoidCallback onTap;

  const ContinueButton({
    super.key,
    this.text = "Continue",
    this.backgroundColor = Colors.black,
    this.svgIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: const Color(0xffEEDCFF)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Stack(
            children: [
              // MAIN BACKGROUND
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),


              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 18,
                      spreadRadius: -18,
                      offset: Offset(0, -15),
                    ),
                  ],
                ),
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.15),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),

              // TEXT + OPTIONAL ICON
              SizedBox(
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (svgIcon != null) ...[
                        SvgPicture.asset(
                          svgIcon!,
                          height: 22,
                        ),
                        const SizedBox(width: 8),
                      ],
                      Text(
                        text,
                        style:  GoogleFonts.baloo2(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
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
