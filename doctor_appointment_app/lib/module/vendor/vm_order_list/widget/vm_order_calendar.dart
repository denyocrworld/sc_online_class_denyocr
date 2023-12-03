import 'dart:developer';

import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class VmOrderCalendarView extends StatefulWidget {
  const VmOrderCalendarView({super.key});

  @override
  _VmOrderCalendarViewState createState() => _VmOrderCalendarViewState();
}

class _VmOrderCalendarViewState extends State<VmOrderCalendarView> {
  Map events = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Calendar"),
      ),
      body: Column(
        children: [
          FireStream(
            stream: FirebaseFirestore.instance
                .collection(collection.bookingCollection)
                .where("vendor_id", isEqualTo: AppSession.userId)
                .orderBy("booking_date")
                .snapshots(
                  includeMetadataChanges: true,
                ),
            onSnapshot: (querySnapshot) {
              //Generate Events
              events = {};
              for (var doc in querySnapshot.docs) {
                var item = doc.data() as Map<String, dynamic>;

                DateTime bookingDate = item["booking_date"].toDate();
                DateTime eventDate = DateTime(
                    bookingDate.year, bookingDate.month, bookingDate.day);
                String key = DateFormat("yyyy-MM-dd").format(eventDate);

                List bookingList = [];
                int orderCount = 0;
                int pendingCount = 0;
                int approvedCount = 0;
                int rejectedCount = 0;

                if (events[key] == null) {
                  events[key] = {
                    "booking_list": [],
                    "order_count": 0,
                    "pending_count": 0,
                    "approved_count": 0,
                    "rejected_count": 0,
                  };
                } else {
                  bookingList = events[key]["booking_list"];
                  orderCount = events[key]["order_count"];
                  pendingCount = events[key]["pending_count"];
                  approvedCount = events[key]["approved_count"];
                  rejectedCount = events[key]["rejected_count"];
                }

                bookingList.add({
                  "booking_date": bookingDate,
                });

                //add vaue
                orderCount++;

                if (item["status"] == "Pending") pendingCount++;
                if (item["status"] == "Approved") approvedCount++;
                if (item["status"] == "Rejected") rejectedCount++;

                events[key] = {
                  "booking_list": bookingList,
                  "order_count": orderCount,
                  "pending_count": pendingCount,
                  "approved_count": approvedCount,
                  "rejected_count": rejectedCount,
                };
              }

              log("$events");

              return TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                // eventLoader: (test) {
                //   return events;
                // },
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, date, index) {
                    var key = DateFormat("yyyy-MM-dd").format(date);
                    var event = events[key];
                    if (event == null) return Container();

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: warningColor,
                          padding: const EdgeInsets.only(
                            top: 2.0,
                            bottom: 2.0,
                            right: 4.0,
                            left: 4.0,
                          ),
                          child: Text(
                            "${event["pending_count"]}",
                            style: const TextStyle(
                              fontSize: 8.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Container(
                          color: successColor,
                          padding: const EdgeInsets.only(
                            top: 2.0,
                            bottom: 2.0,
                            right: 4.0,
                            left: 4.0,
                          ),
                          child: Text(
                            "${event["approved_count"]}",
                            style: const TextStyle(
                              fontSize: 8.0,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
          Container(
            padding: mediumPadding,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      color: warningColor,
                      padding: const EdgeInsets.only(
                        top: 2.0,
                        bottom: 2.0,
                        right: 4.0,
                        left: 4.0,
                      ),
                      child: const Text(
                        "  ",
                        style: TextStyle(
                          fontSize: 8.0,
                        ),
                      ),
                    ),
                    const Text(" = Pending"),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      color: successColor,
                      padding: const EdgeInsets.only(
                        top: 2.0,
                        bottom: 2.0,
                        right: 4.0,
                        left: 4.0,
                      ),
                      child: const Text(
                        "  ",
                        style: TextStyle(
                          fontSize: 8.0,
                        ),
                      ),
                    ),
                    const Text(" = Approved"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
