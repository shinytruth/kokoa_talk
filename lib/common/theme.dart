import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SunshineTheme {
  static ThemeData get theme {
    final themeData = ThemeData.light();
    final textTheme = themeData.textTheme;

    return ThemeData.light().copyWith(
      primaryColor: purpleColor,
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      appBarTheme:
          const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: indigo100Color,
        cursorColor: purpleColor,
      ),
      toggleableActiveColor: purpleColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.cyan[300],
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: grey200Color,
        contentTextStyle: CustomTextTheme.mplus1Regular,
        actionTextColor: purpleColor,
      ),
      textTheme: textTheme.copyWith(button: CustomTextTheme.mplus1Regular),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: grey600Color),
    );
  }
}

///폰트 스타일이 같고 color 가 다를 경우 copyWith 으로 color 지정해서 사용
class CustomTextTheme extends TextTheme {
  static TextStyle get mochiPopOneHuge => const TextStyle(
      fontFamily: 'Mochiy Pop One',
      fontSize: 52,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w400);

  static TextStyle get mochiPopOne => const TextStyle(
      fontFamily: 'Mochiy Pop One',
      fontSize: 32,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w400);

  static TextStyle get mplus1Regular => const TextStyle(
      fontFamily: 'MPLUS1',
      fontSize: 24,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w400);

  static TextStyle get mplus1RegularLarge => const TextStyle(
      fontFamily: 'MPLUS1',
      fontSize: 36,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w400);

  static TextStyle get mplus1ExtraLight => const TextStyle(
      fontFamily: 'MPLUS1',
      fontSize: 20,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w200);

  static TextStyle get poppinsLight => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w300);

  static TextStyle get poppinsMedium => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w500);

  static TextStyle get poppinsSemiBold => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 32,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get poppinsSemiBoldSmaller => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w700);
}

//color
const purpleColor = Color(0xFF6330CD);
const lightRedColor = Color(0xCCE94A48);
const tintPinkColor = Color(0xFFD34462);
const redColor = Color(0xFFE94A48);
const indigoColor = Color(0xFF202653);
const indigo200Color = Color(0xFF525A97);
const indigo100Color = Color(0xFFC0C5E9);
const whiteColor = Colors.white;
const blackColor = Color(0xFF161616);

const grey900Color = Color(0xFF4B5366);
const grey800Color = Color(0xFF2F3342);
const grey600Color = Color(0xFF969FA8);
const grey500Color = Color(0xFF47433f);
const grey400Color = Color(0xFFCCD3DA);
const grey200Color = Color(0xFFEAF0F5);
const grey100Color = Color(0xFFF8FAFD);

final kIsWebMobile = kIsWeb &&
    (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android);
final kIsMobile = (defaultTargetPlatform == TargetPlatform.iOS ||
    defaultTargetPlatform == TargetPlatform.android);
