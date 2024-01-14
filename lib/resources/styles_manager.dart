import 'package:flutter/material.dart';
import 'package:flutter_offline_cart_bloc/resources/colors_manager.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color? color) {
  return TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight);
}

TextStyle getThinStyle({double fontSize = AppFontSize.s12, Color color = AppColors.text}) {
  return _getTextStyle(fontSize, AppFontWeight.thin, color);
}

TextStyle getLightStyle({double fontSize = AppFontSize.s12, Color color = AppColors.text}) {
  return _getTextStyle(fontSize, AppFontWeight.light, color);
}

TextStyle getRegularStyle({double fontSize = AppFontSize.s12, Color color = AppColors.text}) {
  return _getTextStyle(fontSize, AppFontWeight.regular, color);
}

TextStyle getMediumStyle({double fontSize = AppFontSize.s12, Color color = AppColors.text}) {
  return _getTextStyle(fontSize, AppFontWeight.medium, color);
}

TextStyle getBoldStyle({double fontSize = AppFontSize.s12, Color color = AppColors.text}) {
  return _getTextStyle(fontSize, AppFontWeight.bold, color);
}

TextStyle getExtraBoldStyle({double fontSize = AppFontSize.s12, Color color = AppColors.text}) {
  return _getTextStyle(fontSize, AppFontWeight.extrabold, color);
}

TextStyle getBlackStyle({double fontSize = AppFontSize.s12, Color color = AppColors.text}) {
  return _getTextStyle(fontSize, AppFontWeight.black, color);
}

TextStyle getExtraBlackStyle({double fontSize = AppFontSize.s12, Color color = AppColors.text}) {
  return _getTextStyle(fontSize, AppFontWeight.extrablack, color);
}
