import '../../enums/src/font_family_enum.dart';

extension FontFamilyEnumExtension on FontFamilyEnum {
  String get fontFamilyE {
    final bool isRTL = true;
    switch (this) {
      case FontFamilyEnum.primaryFont:
        return isRTL ? 'Almarai' : 'Almarai';
      case FontFamilyEnum.secondaryFont:
        return isRTL ? 'Helvetica' : 'Almarai';

      default:
        return 'Almarai';
    }
  }
}
