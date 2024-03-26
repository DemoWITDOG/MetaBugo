import 'dart:ui';

class MediaRes{
  const MediaRes._();

  // base images path
  static const String _baseSplashImage = 'assets/images/splash_images';

  // color
  static const int _splashMainColor = 0xfff5efe8;
  static const int _whiteColor = 0xffFFFFFF ;
  static const int _blockColor = 0xff201d1d;
  static const int _textUnderLineColor = 0xffdddddd;
  static const int _blueColor = 0xff0094ff;
  static const int _blueText = 0xff2295FF;
  static const int _selectColor = 0xffDD8000;
  static const int _checkBoxColor = 0xffFFA857;
  static const int _greyColor  = 0xffC1C1C1;
  static const int _redText = 0xffFF1818;
  static const int _redAlertText = 0xffEA2727;
  static const int _bugoPannel = 0xff3B3737 ;

  static const int _mainBtnColor=0xff9F836A;
  static const int _kakaoBtnColor=0xffFFEB3B;
  static const int _blackBtnColor=0xff201D1D;
  static const int _greyBtnColor=0xffB2B2B2;

// font weight
  static const FontWeight _light = FontWeight.w300;
  static const FontWeight _regular = FontWeight.w400;
  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _semiBold = FontWeight.w600;
  static const FontWeight _bold = FontWeight.w700;

  //font size
  static double get fontSize14  => 14 ;
  static double get fontSize16  => 16;
  static double get fontSize18 => 18;
  static double get fontSize20 => 20;
  static double get fontSize22 => 22;
  static double get fontSize24 => 24;

  // font family
  static const String _fontKoPubBatang = 'KoPubBatang';
  static const String _fontPretendard = 'pretendard';

  // font styles

  static TextStyle regularTextStyle = TextStyle(
    fontFamily: _fontKoPubBatang,
    fontWeight: _regular,
  );

  static TextStyle semiTextStyle = TextStyle(
    fontFamily: _fontKoPubBatang,
    fontWeight: _semiBold
  );

  static TextStyle pretendardBold = TextStyle(
      fontFamily: _fontPretendard,
      fontWeight: _bold
  );
  static TextStyle pretendardMedium = TextStyle(
      fontFamily: _fontPretendard,
      fontWeight: _medium
  );
  static TextStyle pretendardRegular = TextStyle(
      fontFamily: _fontPretendard,
      fontWeight: _regular
  );
  static TextStyle pretendardSemiBold = TextStyle(
      fontFamily: _fontPretendard,
      fontWeight: _semiBold
  );
  // image path

  static const _candle = 'assets/images/candle.png';
  static const _splash = 'assets/images/splash.png';
  static const _kakao = 'assets/images/kakao.png';
  static const _flower = 'assets/images/flower.png';
}