import 'dart:ui';

class MediaRes{
  const MediaRes._();

  // base images path
  static const String _baseSplashImage = 'assets/images/splash_images';
  static const String _baseImagePath = 'assets/images';
  static const String _baseMainImage = 'assets/images/main_images';
  static const String _baseManageImage = 'assets/images/manage_funeral_images';

  // image path

  static const _candle = '$_baseImagePath/candle.png';
  static const _splash = '$_baseSplashImage/splash.png';
  static const _kakao = '$_baseSplashImage/kakao.png';
  static const _flowerIcon = '$_baseImagePath/flower_icon.png';
  static const _makeBugo = '$_baseMainImage/make_bugo.png';
  static const _manage = '$_baseMainImage/manage.png';
  static const _moneyList = '$_baseManageImage/money_list.png';
  static const _guest_book = '$_baseManageImage/guest_book.png';

  static String get candle => _candle;
  static String get splash => _splash;
  static String get kakao => _kakao;
  static String get flowerIcon => _flowerIcon;
  static String get makeBugo => _makeBugo;
  static String get manage => _manage;
  static String get moneyList => _moneyList;
  static String get guest_book => _guest_book;

  // color
  static const int _splashMainColor = 0xfff5efe8;
  static const int _whiteColor = 0xffFFFFFF ;
  static const int _blackColor = 0xff201d1d;
  static const int _textUnderLineColor = 0xffdddddd;
  static const int _blueColor = 0xff0094ff;
  static const int _blueText = 0xff2295FF;
  static const int _selectColor = 0xffDD8000;
  static const int _checkBoxColor = 0xffFFA857;
  static const int _greyColor  = 0xffC1C1C1;
  static const int _redText = 0xffFF1818;
  static const int _redAlertText = 0xffEA2727;
  static const int _bugoPannel = 0xff3B3737 ;
  static const int _greyText2 = 0xffB2B2B2;
  static const int _greyTextSearch = 0xff898989; // 색상 찾기


  static const int _mainBtnColor = 0xff9F836A;
  static const int _kakaoBtnColor = 0xffFFEB3B;
  static const int _blackBtnColor = 0xff201D1D;
  static const int _greyBtnColor = 0xffB2B2B2;


  static Color get splashMainColor => Color(_splashMainColor);
  static Color get whiteColor => Color(_whiteColor);
  static Color get blackColor => Color(_blackColor);
  static Color get textUnderLineColor => Color(_textUnderLineColor);
  static Color get blueColor => Color(_blueColor);
  static Color get blueText => Color(_blueText);
  static Color get selectColor => Color(_selectColor);
  static Color get checkBoxColor => Color(_checkBoxColor);
  static Color get greyColor => Color(_greyColor);
  static Color get redText => Color(_redText);
  static Color get redAlertText => Color(_redAlertText);
  static Color get bugoPannel => Color(_bugoPannel);
  static Color get greyText2 => Color(_greyText2);
  static Color get greyTextSearch => Color(_greyTextSearch);


  static Color get mainBtnColor => Color(_mainBtnColor);
  static Color get kakaoBtnColor => Color(_kakaoBtnColor);
  static Color get blackBtnColor => Color(_blackBtnColor);
  static Color get greyBtnColor => Color(_greyBtnColor);

// font weight
  static const FontWeight _regular = FontWeight.w400;
  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _semiBold = FontWeight.w600;
  static const FontWeight _bold = FontWeight.w700;
  static const FontWeight _extraBold = FontWeight.w800;

  static FontWeight get regular => _regular;
  static FontWeight get medium => _medium;
  static FontWeight get semiBold => _semiBold;
  static FontWeight get bold => _bold;
  static FontWeight get extraBold => _extraBold;

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
}