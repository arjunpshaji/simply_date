import 'package:intl/intl.dart';

class SimplyDate {
  /// Formats a given datetime string to a "time ago" format.
  ///
  /// Takes a [dateTimeString] in the format "yyyy-MM-dd hh:mm:ss a".
  ///
  /// Returns a string indicating the time difference between the input datetime
  /// and the current datetime, formatted as "time ago".
  String? convertToTimeAgo({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    DateTime now = DateTime.now();
    Duration difference = now.difference(dateTime);
    int minutesDifference = difference.inMinutes.abs();
    if (minutesDifference < 1) {
      return "just now";
    } else if (minutesDifference < 60) {
      return "$minutesDifference minutes ago";
    } else if (minutesDifference < 120) {
      return "an hour ago";
    } else if (minutesDifference < 1440) {
      return "${(minutesDifference / 60).floor()} hr ago";
    } else if (minutesDifference < 44640) {
      return "${(minutesDifference / 1440).floor()} days ago";
    } else if (minutesDifference < 525600) {
      return "${now.month - dateTime.month} month ago";
    } else {
      return "${now.year - dateTime.year} year ago";
    }
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "dd/MM/yyyy".
  ///
  /// Takes a [dateTimeString] in the format "yyyy-MM-dd hh:mm:ss a" and returns
  /// a string formatted as "dd/MM/yyyy".
  String? convertToDDMMYYYformat({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    // Parse the input date string using the input format
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);

    // Format the parsed DateTime object to the desired output format
    String formattedDate = DateFormat("dd/MM/yyyy").format(dateTime);

    return formattedDate;
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "yyyy-MM-dd".
  ///
  /// Takes a [dateTimeString] in the format "yyyy-MM-dd hh:mm:ss a" and returns
  /// a string formatted as "yyyy-MM-dd".
  String? convertYYYYMMDD({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    // Parse the input date string using the input format
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);

    // Format the parsed DateTime object to the desired output format
    String formattedDate = DateFormat("yyyy-MM-dd").format(dateTime);

    return formattedDate;
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "MM/dd/yyyy".
  ///
  /// Takes a [dateTimeString] in the format "yyyy-MM-dd hh:mm:ss a" and returns
  /// a string formatted as "MM/dd/yyyy".
  String? convertMMDDYYYY({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    // Parse the input date string using the input format
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);

    // Format the parsed DateTime object to the desired output format
    String formattedDate = DateFormat("MM/dd/yyyy").format(dateTime);

    return formattedDate;
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "dd/MM/yy".
  ///
  /// Takes a [dateTimeString] in the format "yyyy-MM-dd hh:mm:ss a" and returns
  /// a string formatted as "dd/MM/yy".
  String? convertToDDMMYY({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    // Parse the input date string using the input format
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);

    // Format the parsed DateTime object to the desired output format
    String formattedDate = DateFormat("dd/MM/yy").format(dateTime);

    return formattedDate;
  }

  // Example: April 06, 2024
  String? convertToMonthDayYear({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    return DateFormat("MMMM d, yyyy").format(dateTime);
  }

// Example: 06 April 2024
  String? convertToDayMonthYear({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    return DateFormat("d MMMM yyyy").format(dateTime);
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "yyyy/MM/dd".
  ///
  /// Takes a [dateTimeString] in the format "yyyy-MM-dd hh:mm:ss a" and returns
  /// a string formatted as "yyyy/MM/dd".
  String? convertToYYYYMMDDSlash({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    return DateFormat("yyyy/MM/dd").format(dateTime);
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "dd/MM/yyyy at hh:mm a".
  ///
  /// Takes a [dateTimeString] in the format "yyyy-MM-dd hh:mm:ss a" and returns
  /// a string formatted as "dd/MM/yyyy hh:mm a".
  /// use [isNeedAt] if you need "at"
  String? convertToDDMMYYYYAtTime(
      {String? dateTimeString, bool? isNeedAt = false}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    return DateFormat("dd/MM/yyyy ${isNeedAt == true ? 'at' : null} hh:mm a")
        .format(dateTime);
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "yyyy-MM-dd hh:mm a".
  String? convertToDefaultFormat(
      {String? dateTimeString, bool? isNeedAt = false}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    return DateFormat("yyyy-MM-dd ${isNeedAt == true ? 'at' : null} hh:mm a")
        .format(dateTime);
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "Mon, 20 Oct 2024".
  String? convertToDayMonthYearWithDay({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    return DateFormat("EEE, dd MMM yyyy").format(dateTime);
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "MMMM yyyy".
  /// Example: "2024-05-20 02:30 PM" will be converted to "May 2024".
  String? convertToMonthYear({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    return DateFormat("MMMM yyyy").format(dateTime);
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to "2024 October".
  String? convertToYearMonth({String? dateTimeString}) {
    if (dateTimeString == null) return null;
    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    return DateFormat("yyyy MMMM").format(dateTime);
  }

  /// Checks if a given date string is greater than today's date.
  ///
  /// The date string should be in the format 'yyyy-MM-dd'.
  ///
  /// [dateString] - The date string to compare.
  ///
  /// Note: returns false if the input is null
  /// Returns true if the given date is after today's date, false otherwise.
  bool isDateGreaterThanToday({String? dateString}) {
    if (dateString == null) return false;
    try {
      DateTime inputDate = DateTime.parse(dateString);

      DateTime today = DateTime.now();
      DateTime currentDate = DateTime(today.year, today.month, today.day);
      return inputDate.isAfter(currentDate);
    } catch (e) {
      // Handle parsing error
      return false;
    }
  }

  /// Checks if a given date string is smaller than today's date.
  ///
  /// The date string should be in the format 'yyyy-MM-dd'.
  ///
  /// [dateString] - The date string to compare.
  ///
  /// Note: returns false if the input is null
  /// Returns true if the given date is before today's date, false otherwise.
  bool isDateSmallerThanToday({String? dateString}) {
    if (dateString == null) return false;
    try {
      DateTime inputDate = DateTime.parse(dateString);

      DateTime today = DateTime.now();
      DateTime currentDate = DateTime(today.year, today.month, today.day);
      return inputDate.isBefore(currentDate);
    } catch (e) {
      // Handle parsing error
      return false;
    }
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a".
  ///
  /// - If the date is today, it returns "Today at hh:mm a".
  /// - If the date is yesterday, it returns "Yesterday at hh:mm a".
  /// - Otherwise, it returns the date in a customizable format [customFormat].
  /// Default custom format is "dd/MM/yyyy 'at' hh:mm a"
  String? toRelativeDateTime(
      {String? dateTimeString,
      String customFormat = "dd/MM/yyyy 'at' hh:mm a"}) {
    if (dateTimeString == null) return null;

    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    DateTime now = DateTime.now();

    // Check if the date is today
    if (isSameDate(dateTime, now)) {
      return DateFormat("'Today at' hh:mm a").format(dateTime);
    }

    // Check if the date is yesterday
    if (isSameDate(dateTime, now.subtract(const Duration(days: 1)))) {
      return DateFormat("'Yesterday at' hh:mm a").format(dateTime);
    }

    // Otherwise, return the date in the custom format
    return DateFormat(customFormat).format(dateTime);
  }

  /// Helper function to check if two dates are the same calendar date (ignoring time).
  bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  /// Converts a date string from the format "yyyy-MM-dd hh:mm:ss a" to a format with ordinal suffixes like "21st May".
  String? toDayWithOrdinalSuffix(
      {String? dateTimeString,
      bool? isRemoveMonth = false,
      bool? isRemoveYear = false}) {
    if (dateTimeString == null) return null;

    DateTime dateTime =
        DateFormat("yyyy-MM-dd hh:mm:ss a").parse(dateTimeString);
    String dayWithSuffix = getDayWithSuffix(dateTime.day);
    String? month =
        isRemoveMonth == false ? DateFormat("MMMM").format(dateTime) : null;
    String? year =
        isRemoveYear == false ? DateFormat("yyyy").format(dateTime) : null;

    // Build the final string, adding only non-null values and separating them with spaces
    List<String> parts = [dayWithSuffix];
    if (month != null) parts.add(month);
    if (year != null) parts.add(year);

    return parts.join(" ");
  }

  /// Helper function to get the day with the appropriate ordinal suffix (e.g., "1st", "2nd", "3rd", etc.).
  String getDayWithSuffix(int day) {
    if (day >= 11 && day <= 13) {
      return "${day}th";
    }
    switch (day % 10) {
      case 1:
        return "${day}st";
      case 2:
        return "${day}nd";
      case 3:
        return "${day}rd";
      default:
        return "${day}th";
    }
  }
}
