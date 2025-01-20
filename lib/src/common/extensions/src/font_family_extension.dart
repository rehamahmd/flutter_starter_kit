import 'dart:ui';

import '../../enums/src/font_family_enum.dart';
import 'package:google_fonts/google_fonts.dart';

extension FontFamilyEnumExtension on FontFamilyEnum {
  String get fontFamilyE {
    final bool isRTL = false;
    switch (this) {
      case FontFamilyEnum.primaryFont:
        return isRTL ? 'Almarai' : 'cursive';
      case FontFamilyEnum.secondaryFont:
        return isRTL ? 'Helvetica' : 'cursive';
    }
  }
}
