import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TestingConnection extends StatefulWidget {
  TestingConnection({Key key}) : super(key: key);

  @override
  _TestingConnectionState createState() => _TestingConnectionState();
}

class _TestingConnectionState extends State<TestingConnection> {
  final String documentId = 'PrIvySfSoQSbROWkQ8j8';

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('testomg');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Text("Full Name: ${data['full_name']} ${data['last_name']}");
        }

        return Text("loading");
      },
    );
  }
}
