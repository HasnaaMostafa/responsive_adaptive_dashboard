import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Name Card",
                style: AppStyles.styleRegular16
                    .copyWith(color: const Color(0xffFFFFFF)),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Syah Bandi",
                  style: AppStyles.styleMedium20,
                ),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24
                        .copyWith(color: const Color(0xffFFFFFF)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16
                        .copyWith(color: const Color(0xffFFFFFF)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
