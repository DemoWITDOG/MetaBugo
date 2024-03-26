import 'dart:ui';

class MediaRes{
  const MediaRes._();

  // base images path
  static const String _baseSplashImage = 'assets/images/splash_images';

  // color
  static const int _splashMainColor = 0xfff5efe8;
  static const int _blockColor = 0xff201d1d;
  static const int _TextUnderLineColor = 0xffdddddd;
  static const int _blueColor = 0xff0094ff;
  static const int _selectColor = 0xffDD8000;

// font weight
  static const FontWeight _light = FontWeight.w300;
  static const FontWeight _regular = FontWeight.w400;
  static const FontWeight _semiBold = FontWeight.w600;
  static const FontWeight _extraBold = FontWeight.w800;
  static const FontWeight _black = FontWeight.w900;

  // font family
  static const String _fontFamily = 'KoPubBatang';

  // font styles
  static TextStyle lightTextStyle = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: _light,
  );

  static TextStyle regularTextStyle = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: _regular,
  );

  static TextStyle semiTextStyle = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: _semiBold
  );

  static TextStyle extraBoldTextStyle = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: _extraBold,
  );

  static TextStyle blackTextStyle = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: _black,
  );


  // image path

}