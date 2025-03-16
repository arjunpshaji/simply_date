// ignore_for_file: avoid_print
import 'package:simply_date/simply_date.dart';

void main() {
  final SimplyDate simplyDate = SimplyDate();

  String dateTimeString = "2024-08-21 08:30:00 AM";

  print("Original DateTime String: $dateTimeString");
  print(
      "Time Ago: ${simplyDate.convertToTimeAgo(dateTimeString: dateTimeString)}");
  print(
      "DD/MM/YYYY: ${simplyDate.convertToDDMMYYYformat(dateTimeString: dateTimeString)}");
  print(
      "YYYY-MM-DD: ${simplyDate.convertYYYYMMDD(dateTimeString: dateTimeString)}");
  print(
      "MM/DD/YYYY: ${simplyDate.convertMMDDYYYY(dateTimeString: dateTimeString)}");
  print(
      "DD/MM/YY: ${simplyDate.convertToDDMMYY(dateTimeString: dateTimeString)}");
  print(
      "Month Day, Year: ${simplyDate.convertToMonthDayYear(dateTimeString: dateTimeString)}");
  print(
      "Day Month Year: ${simplyDate.convertToDayMonthYear(dateTimeString: dateTimeString)}");
  print(
      "YYYY/MM/DD: ${simplyDate.convertToYYYYMMDDSlash(dateTimeString: dateTimeString)}");
  print(
      "DD/MM/YYYY at hh:mm a: ${simplyDate.convertToDDMMYYYYAtTime(dateTimeString: dateTimeString, isNeedAt: true)}");
  print(
      "Default Format: ${simplyDate.convertToDefaultFormat(dateTimeString: dateTimeString, isNeedAt: true)}");
  print(
      "Day, DD MMM YYYY: ${simplyDate.convertToDayMonthYearWithDay(dateTimeString: dateTimeString)}");
  print(
      "Month Year: ${simplyDate.convertToMonthYear(dateTimeString: dateTimeString)}");
  print(
      "Year Month: ${simplyDate.convertToYearMonth(dateTimeString: dateTimeString)}");

  print(
      "Is date greater than today? ${simplyDate.isDateGreaterThanToday(dateString: "2025-01-01")}");
  print(
      "Is date smaller than today? ${simplyDate.isDateSmallerThanToday(dateString: "2023-01-01")}");

  print(
      "Relative Date Time: ${simplyDate.toRelativeDateTime(dateTimeString: dateTimeString)}");
  print(
      "Day with Ordinal Suffix: ${simplyDate.toDayWithOrdinalSuffix(dateTimeString: dateTimeString)}");
}
