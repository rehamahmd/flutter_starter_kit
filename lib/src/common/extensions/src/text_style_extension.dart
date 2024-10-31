import 'package:flutter_starter_kit/app/imports.dart';
import '../../styles/text/text_style_imp.dart';

extension TextStyleExtensions on AppTextStyle {
  TextStyle? get primaryStyle {
    try {
      TextStyle selectedTextStyle = TextStyleImp.textStyleImp[this]!;
      final fontFamily = FontFamilyEnum.primaryFont.fontFamilyE;
      return selectedTextStyle.copyWith(fontFamily: fontFamily);
    } catch (e) {
      throw Exception("TextStyle Implementation for '$this' not exist.. ");
    }
  }

  TextStyle? get secondaryStyle {
    try {
      TextStyle selectedTextStyle = TextStyleImp.textStyleImp[this]!;
      final fontFamily = FontFamilyEnum.secondaryFont.fontFamilyE;
      return selectedTextStyle.copyWith(fontFamily: fontFamily);
    } catch (e) {
      throw Exception("Secondary Style:.. Cant get textStyle Imp");
    }
  }
}
