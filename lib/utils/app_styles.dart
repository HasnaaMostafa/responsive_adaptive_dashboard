import 'package:admin_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular8(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 8),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular10(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  // static const TextStyle styleRegular16 = TextStyle(
  //   color: Color(0xff064061),
  //   fontSize: 12,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w400,
  // );
  //
  // static const TextStyle styleMedium16 = TextStyle(
  //   color: Color(0xff064061),
  //   fontSize: 12,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w500,
  // );
  //
  // static const TextStyle styleSemiBold16 = TextStyle(
  //   color: Color(0xff064061),
  //   fontSize: 12,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w600,
  // );
  //
  // static const TextStyle styleSemiBold20 = TextStyle(
  //   color: Color(0xff064061),
  //   fontSize: 16,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w600,
  // );
  //
  // static const TextStyle styleRegular12 = TextStyle(
  //   color: Color(0xffAAAAAA),
  //   fontSize: 8,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w400,
  // );
  //
  // static const TextStyle styleSemiBold24 = TextStyle(
  //   color: Color(0xff4EB7F2),
  //   fontSize: 16,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w600,
  // );
  //
  // static const TextStyle styleRegular14 = TextStyle(
  //   color: Color(0xffAAAAAA),
  //   fontSize: 10,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w400,
  // );
  //
  // static const TextStyle styleSemiBold18 = TextStyle(
  //   color: Color(0xffFFFFFF),
  //   fontSize: 14,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w600,
  // );
  //
  // static const TextStyle styleBold16 = TextStyle(
  //   color: Color(0xff4EB7F2),
  //   fontSize: 12,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w700,
  // );
  //
  // static const TextStyle styleMedium20 = TextStyle(
  //   color: Color(0xffFFFFFF),
  //   fontSize: 16,
  //   fontFamily: "Montserrat",
  //   fontWeight: FontWeight.w500,
  // );
}

// scale Factor
// responsive font size
// (min , max) font size

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 450;
  } else if (width < SizeConfig.desktop) {
    return width / 700;
  } else {
    return width / 1366;
  }
}

//width=> platformDispatcher instead mediaQuery
//1-physical width
//2-device pixel ratio
//width=physical width / device pixel ratio
