# SimplyDate - Flutter Package

SimplyDate is a utility package for working with dates in Flutter. It provides functions to format and manipulate date strings, check date conditions, and generate relative date expressions (e.g., "yesterday" or "2 days ago").

## **✨ Features**

✅ Convert dates to various formats (e.g., `dd/MM/yyyy`, `MM/dd/yyyy`, `Month Year`, etc.)  
✅ Generate relative date strings (e.g., "just now", "5 minutes ago", "yesterday")  
✅ Add ordinal suffixes to days (e.g., "1st", "2nd", "3rd")  
✅ Compare dates to check if they are greater or smaller than today  
✅ Support custom date formats  

---

## **📦 Installation**

Add the following dependency to your `pubspec.yaml`:

```yaml
dependencies:
  simply_date: ^1.0.0
```

Then, run:

```sh
flutter pub get
```

---

## **🚀 Usage**

Import the package in your Dart code:

```dart
import 'package:simply_date/simply_date.dart';
```

### **Convert Date to "Time Ago" Format**

```dart
SimplyDate simplyDate = SimplyDate();
String? timeAgo = simplyDate.convertToTimeAgo(dateTimeString: "2024-08-21 08:30:00 AM");
print(timeAgo); // Output: "2 days ago"
```

### **Convert to Different Date Formats**

```dart
String? formattedDate = simplyDate.convertToDDMMYYYformat(dateTimeString: "2024-08-21 08:30:00 AM");
print(formattedDate); // Output: "21/08/2024"

formattedDate = simplyDate.convertMMDDYYYY(dateTimeString: "2024-08-21 08:30:00 AM");
print(formattedDate); // Output: "08/21/2024"
```

### **Convert to Custom Formats**

```dart
String? monthDayYear = simplyDate.convertToMonthDayYear(dateTimeString: "2024-08-21 08:30:00 AM");
print(monthDayYear); // Output: "August 21, 2024"

String? dayMonthYear = simplyDate.convertToDayMonthYear(dateTimeString: "2024-08-21 08:30:00 AM");
print(dayMonthYear); // Output: "21 August 2024"
```

### **Relative DateTime Strings**

```dart
String? relativeDate = simplyDate.toRelativeDateTime(dateTimeString: "2024-08-21 08:30:00 AM");
print(relativeDate); // Output: "2 days ago" or "21/08/2024 at 08:30 AM" based on conditions
```

### **Adding Ordinal Suffixes to Days**

```dart
String? dayWithSuffix = simplyDate.toDayWithOrdinalSuffix(dateTimeString: "2024-08-21 08:30:00 AM");
print(dayWithSuffix); // Output: "21st August 2024"
```

### **Date Comparisons**

```dart
bool isFuture = simplyDate.isDateGreaterThanToday(dateString: "2024-08-25");
print(isFuture); // Output: true

bool isPast = simplyDate.isDateSmallerThanToday(dateString: "2024-08-18");
print(isPast); // Output: true
```

---

## **📜 List of Methods**

### **📅 Date Formatting Methods**

- `convertToTimeAgo({String? dateTimeString})` – Converts a date string to a "time ago" format.
- `convertToDDMMYYYformat({String? dateTimeString})` – Converts to `dd/MM/yyyy` format.
- `convertYYYYMMDD({String? dateTimeString})` – Converts to `yyyy-MM-dd` format.
- `convertMMDDYYYY({String? dateTimeString})` – Converts to `MM/dd/yyyy` format.
- `convertToMonthDayYear({String? dateTimeString})` – Converts to `Month Day, Year` format.
- `convertToDayMonthYear({String? dateTimeString})` – Converts to `Day Month Year` format.
- `convertToDDMMYYYYAtTime({String? dateTimeString, bool? isNeedAt})` – Converts to `dd/MM/yyyy at hh:mm a` format.

### **📊 Date Comparison Methods**

- `isDateGreaterThanToday({String? dateString})` – Checks if the date is greater than today.
- `isDateSmallerThanToday({String? dateString})` – Checks if the date is smaller than today.

### **🕒 Relative Date Methods**

- `toRelativeDateTime({String? dateTimeString, String customFormat})` – Converts a date string to a relative format like "Today", "Yesterday", or a custom format.

### **🔢 Ordinal Suffix Method**

- `toDayWithOrdinalSuffix({String? dateTimeString, bool? isRemoveMonth, bool? isRemoveYear})` – Converts a date string to a format with an ordinal suffix.

---

## **📱 Example App**

```dart
import 'package:flutter/material.dart';
import 'package:simply_date/simply_date.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SimplyDate simplyDate = SimplyDate();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SimplyDate Example")),
        body: Center(
          child: Text(simplyDate.convertToTimeAgo(dateTimeString: "2024-08-21 08:30:00 AM") ?? "No Data"),
        ),
      ),
    );
  }
}
```

---

## **🤝 Contributing**

If you encounter any bugs or have feature requests, feel free to open an issue on the [GitHub repository](https://github.com/yourusername/simply_date).

---

## **📄 License**

This package is licensed under the **MIT License**.