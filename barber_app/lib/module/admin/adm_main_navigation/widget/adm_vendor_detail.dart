import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class AdmVendorDetail extends StatefulWidget {
  final String vendorId;
  final Map vendor;

  const AdmVendorDetail({
    super.key,
    required this.vendorId,
    required this.vendor,
  });

  @override
  _AdmVendorDetailState createState() => _AdmVendorDetailState();
}

class _AdmVendorDetailState extends State<AdmVendorDetail> {
  Map? user;

  loadData() async {
    if (mounted) {
      var userSnapshot = await FirebaseFirestore.instance
          .collection(collection.userDataCollection)
          .doc(widget.vendorId)
          .get();
      user = userSnapshot.data() as Map<String, dynamic>;

      user ??= {
        "profile": {
          "display_name": "Dummy Data",
          "email": "dummy-data@gmail.com",
        }
      };
    }

    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) return Container();
    return FireStreamDocument(
      stream: FirebaseFirestore.instance
          .collection(collection.vendorCollection)
          .doc(widget.vendorId)
          .snapshots(),
      onSnapshot: (snapshot) {
        var vendor = snapshot.data() as Map<String, dynamic>;
        vendor["id"] = snapshot.id;

        return Card(
          elevation: 0.4,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Image.network(src)
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        vendor["photo_url"],
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Owner:"),
                      Text(
                        "${user!["profile"]?["display_name"] ?? '-'}",
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${user!["profile"]?["email"] ?? '-'}",
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      //Vendor Detail
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Vendor:"),
                          Text(
                            vendor["vendor_name"],
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            vendor["status"] ?? "Pending",
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  FirebaseFirestore.instance
                                      .collection(collection.vendorCollection)
                                      .doc(widget.vendorId)
                                      .update({
                                    "status": "Banned",
                                  });
                                  print("Banned!");
                                },
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.purple[900],
                                  child: const Icon(
                                    Icons.block,
                                    color: Colors.white,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              InkWell(
                                onTap: () {
                                  FirebaseFirestore.instance
                                      .collection(collection.vendorCollection)
                                      .doc(widget.vendorId)
                                      .update({
                                    "status": "Rejected",
                                  });
                                  print("Rejected!");
                                },
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.red[900],
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              InkWell(
                                onTap: () {
                                  FirebaseFirestore.instance
                                      .collection(collection.vendorCollection)
                                      .doc(widget.vendorId)
                                      .update({
                                    "status": "Pending",
                                  });
                                  print("Pending!");
                                },
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.yellow[900],
                                  child: const Icon(
                                    Icons.lock_clock,
                                    color: Colors.white,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              InkWell(
                                onTap: () {
                                  FirebaseFirestore.instance
                                      .collection(collection.vendorCollection)
                                      .doc(widget.vendorId)
                                      .update({
                                    "status": "Approved",
                                  });
                                  print("Approved!");
                                },
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.green[900],
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                      //
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
