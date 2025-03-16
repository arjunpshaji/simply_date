import 'package:flutter_test/flutter_test.dart';
import 'package:simply_date/simply_date.dart';

void main() {
  final simplyDate = SimplyDate();

  group('Date Conversion Tests', () {
    test('convertToTimeAgo should return correct values', () {
      expect(
          simplyDate.convertToTimeAgo(dateTimeString: "2025-03-05 10:00:00 AM"),
          isNotNull);
    });

    test('convertToDDMMYYYformat should format correctly', () {
      expect(
          simplyDate.convertToDDMMYYYformat(
              dateTimeString: "2025-03-05 10:00:00 AM"),
          "05/03/2025");
    });

    test('convertToYYYYMMDD should format correctly', () {
      expect(
          simplyDate.convertYYYYMMDD(dateTimeString: "2025-03-05 10:00:00 AM"),
          "2025-03-05");
    });

    test('convertToMonthDayYear should return expected format', () {
      expect(
          simplyDate.convertToMonthDayYear(
              dateTimeString: "2025-03-05 10:00:00 AM"),
          "March 5, 2025");
    });

    test('isDateGreaterThanToday should return correct boolean', () {
      expect(simplyDate.isDateGreaterThanToday(dateString: "2090-01-01"), true);
      expect(
          simplyDate.isDateGreaterThanToday(dateString: "2000-01-01"), false);
    });

    test('toRelativeDateTime should return expected values', () {
      expect(
          simplyDate.toRelativeDateTime(
              dateTimeString: "2025-03-05 10:00:00 AM"),
          isNotNull);
    });
  });
}
