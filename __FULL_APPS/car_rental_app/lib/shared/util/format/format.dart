import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Format {
  static String toDateString(
    Timestamp timestamp, {
    bool namedString = true,
  }) {
    var dateString = DateFormat("d MMM y").format(timestamp.toDate());

    if (namedString) {
      var date = timestamp.toDate();
      var today = DateTime.now();
      var yesterday = DateTime.now().subtract(const Duration(days: 1));
      if (date.year == today.year &&
          date.month == today.month &&
          date.day == today.day) {
        return "Today";
      } else if (date.year == yesterday.year &&
          date.month == yesterday.month &&
          date.day == yesterday.day - 1) {
        return "Yesterday";
      }
    }
    return dateString;
  }
}
