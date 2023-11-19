import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireStream extends StatelessWidget {
  final Stream<QuerySnapshot> stream;

  final Function? onEmptyDocs;
  final String? title;
  final bool? shrinkWrap;
  // final bool? showLoading;
  final Function(
    Map item,
    int index,
    QuerySnapshot querySnapshot,
  )? onItemBuild;

  final Function(
    QuerySnapshot querySnapshot,
  )? onSnapshot;

  const FireStream({
    super.key,
    this.title,
    // this.showLoading = true,
    required this.stream,
    this.onItemBuild,
    this.onEmptyDocs,
    this.onSnapshot,
    this.shrinkWrap = true,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: stream,
      builder: (context, stream) {
        // if (showLoading!) {
        if (stream.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
          // }
        }

        QuerySnapshot? querySnapshot = stream.data;

        if (querySnapshot!.docs.isEmpty) {
          if (onEmptyDocs != null) return onEmptyDocs!();
          return Container();
        }

        if (onSnapshot != null) {
          return onSnapshot!(querySnapshot);
        }

        getListView() {
          return ListView.builder(
            controller: ScrollController(),
            itemCount: querySnapshot.docs.length,
            shrinkWrap: shrinkWrap!,
            physics: shrinkWrap == true
                ? const NeverScrollableScrollPhysics()
                : null,
            itemBuilder: (context, index) {
              var item =
                  querySnapshot.docs[index].data() as Map<String, dynamic>;
              var docId = querySnapshot.docs[index].id;
              item["id"] = docId;

              if (onItemBuild != null) {
                return onItemBuild!(item, index, querySnapshot);
              }
              return Container();
            },
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  title!,
                ),
              ),
            if (title != null) const SizedBox(height: 10),
            if (shrinkWrap == false)
              Expanded(
                child: getListView(),
              ),
            if (shrinkWrap == true) getListView(),
          ],
        );
      },
    );
  }
}
