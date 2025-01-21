import 'package:intl/intl.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class DateTimeUtils {
  DateTimeUtils._();
  static String slashFormat(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static DateTime fromSlashFormat(String formattedDate) {
    return DateFormat('dd/MM/yyyy').parse(formattedDate);
  }

  static String dashFormat(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String timeFormat(DateTime date) {
    return DateFormat('hh:mm a').format(DateTime.now());
  }

  static int getDayFromDate(String date) {
    final dateTime = DateTime.parse(date);
    return dateTime.day;
  }

  static String getTimeCreatedAt(String createdAt, BuildContext context) {
    final inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ssZ');
    final outputFormat = DateFormat('hh:mm a', 'en');
    final dateTime = inputFormat.parse(createdAt);
    final formattedDateTime = outputFormat.format(dateTime);
    return formattedDateTime;
  }

  static String capitalizeFirstChar(String? txt) {
    return txt != null ? txt.replaceFirst(txt[0], txt[0].toUpperCase()) : "";
  }

  static int calculateTheDifference(String dateTime, String createdAt) {
    final duration = DateTime.parse(createdAt);
    final createAt = DateTime(duration.year, duration.month, duration.day);
    final diff = DateTime.parse(dateTime).difference(createAt);
    return diff.inDays;
  }

  static Future pickDate(BuildContext context, TextEditingController dateTimeController,
      {DateTime? minDate, DateTime? lastDate, VoidCallback? onSelect}) async {
    DateTime? dateTime = await showDatePicker(
      builder: (context, child) {
        return child!;
      },
      context: context,
      initialDate: DateTime.now(),
      firstDate: minDate ?? DateTime(2000),
      lastDate: lastDate ?? DateTime.now(),
    );
    if (dateTime != null) {
      dateTimeController.text = slashFormat(dateTime);
      return dateTime;
    }
  }
}
