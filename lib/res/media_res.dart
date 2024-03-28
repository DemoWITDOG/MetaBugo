import 'dart:ui';

class MediaRes{
  const MediaRes._();

  // base images path
  static const String _baseSplashImage = 'assets/images/splash_images';
  static const String _baseImagePath = 'assets/images';

  // image path

  static const _candle = '$_baseImagePath/candle.png';
  static const _splash = '$_baseSplashImage/splash.png';
  static const _kakao = '$_baseSplashImage/kakao.png';
  static const _flowerIcon = '$_baseImagePath/flower_icon.png';

  static String get candle => _candle;
  static String get splash => _splash;
  static String get kakao => _kakao;
  static String get flowerIcon => _flowerIcon;

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

  static const int _mainBtnColor = 0xff9F836A;
  static const int _kakaoBtnColor = 0xffFFEB3B;
  static const int _blackBtnColor = 0xff201D1D;
  static const int _greyBtnColor = 0xffB2B2B2;

  static Color get splashMainColor => Color(_splashMainColor);
  static Color get whiteColor => Color(_whiteColor);
  static Color get blockColor => Color(_blockColor);
  static Color get textUnderLineColor => Color(_textUnderLineColor);
  static Color get blueColor => Color(_blueColor);
  static Color get blueText => Color(_blueText);
  static Color get selectColor => Color(_selectColor);
  static Color get checkBoxColor => Color(_checkBoxColor);
  static Color get greyColor => Color(_greyColor);
  static Color get redText => Color(_redText);
  static Color get redAlertText => Color(_redAlertText);
  static Color get bugoPannel => Color(_bugoPannel);

  static Color get mainBtnColor => Color(_mainBtnColor);
  static Color get kakaoBtnColor => Color(_kakaoBtnColor);
  static Color get blackBtnColor => Color(_blackBtnColor);
  static Color get greyBtnColor => Color(_greyBtnColor);

// font weight
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

  static String get fontKoPubBatang=>_fontKoPubBatang;
  static String get fontPretendard=>_fontPretendard;

  // font styles
  static TextStyle _regularTextStyle = TextStyle(
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
}