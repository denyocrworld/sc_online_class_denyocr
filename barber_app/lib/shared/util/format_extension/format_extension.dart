import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class FormatExtension {}

friendlydate(dynamic value) {
  if (value is Timestamp) {
    return DateFormat("EEE, dd MMM y kk:mm").format(value.toDate());
  } else if (value is DateTime) {
    return DateFormat("EEE, dd MMM y kk:mm").format(value);
  }
  return value;
}
