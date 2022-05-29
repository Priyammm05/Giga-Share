// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace


import 'package:flutter/material.dart';
import 'package:giga_share/models/user_model.dart';
import 'package:giga_share/widgets/boxes.dart';
import 'package:giga_share/widgets/history_card.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'HISTORY',
          style: TextStyle(
            letterSpacing: 1.2,
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            width: double.infinity,
            child: ValueListenableBuilder<Box<UserModel>>(
              valueListenable: Boxes.getTransactions().listenable(),
              builder: (context,box,_){
                final transactions = box.values.toList().cast<UserModel>();
                return HistoryCard(
                transactions:transactions,
                );
              },
            ),
          ),
    );
  }
}
