import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: ShapeDecoration(
          color: const Color(0xffFFFFFF),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: child,
    );
  }
}
