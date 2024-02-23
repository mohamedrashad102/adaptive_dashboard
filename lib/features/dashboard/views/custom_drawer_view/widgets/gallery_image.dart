import 'package:adaptive_dashboard/common/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GalleryImage extends StatelessWidget {
  const GalleryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: const Color(0xFFC4C4C4),
      alignment: Alignment.center,
      child: SvgPicture.asset(AppAssets.imagesGallery),
    );
  }
}
