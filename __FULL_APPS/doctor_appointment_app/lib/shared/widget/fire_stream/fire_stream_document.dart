import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireStreamDocument extends StatelessWidget {
  final Stream<DocumentSnapshot> stream;
  final Widget? onLoading;
  final Widget? onError;
  final Function? onEmpty;
  final Function(DocumentSnapshot snapshot) onSnapshot;

  const FireStreamDocument({
    super.key,
    required this.stream,
    required this.onSnapshot,
    this.onLoading,
    this.onError,
    this.onEmpty,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, stream) {
        if (stream.connectionState == ConnectionState.waiting) {
          if (onLoading == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }

        if (stream.hasError) {
          if (onError == null) {
            return Center(child: Text(stream.error.toString()));
          }
        }

        if (stream.data == null) {
          if (onEmpty != null) {
            return onEmpty!();
          }
        }

        return onSnapshot((stream.data as DocumentSnapshot));
      },
    );
  }
}
