import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesHeaderItem extends StatelessWidget {
  const AllExpensesHeaderItem({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackground,
    this.iconColor,
  });

  final String image;
  final Color? imageColor, imageBackground, iconColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Row(
        children: [
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 60),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  // width: 60,
                  // height: 60,
                  decoration: ShapeDecoration(
                      color: imageBackground ?? const Color(0xffFAFAFA),
                      shape: const OvalBorder()),
                  child: Center(
                      child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  )),
                ),
              ),
            ),
          ),
          const Spacer(),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 3),
            child: Icon(Icons.arrow_forward_ios_sharp,
                color: iconColor ?? const Color(0xff064061)),
          ),
        ],
      ),
    );
  }
}
