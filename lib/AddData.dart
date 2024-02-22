import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final CollectionReference products =
    FirebaseFirestore.instance.collection('testdata');

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  final Name = TextEditingController();
  final Email = TextEditingController();
  final Number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: Name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: Email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: Number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Name'),
            ),
          ),
        ],
      ),
    );
  }
}
