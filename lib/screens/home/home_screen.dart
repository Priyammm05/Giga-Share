// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables, unnecessary_null_comparison, unnecessary_cast, unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giga_share/models/user_model.dart';
import 'package:giga_share/screens/home/history_screen.dart';
import 'package:giga_share/upload/receive_screen.dart';
import 'package:giga_share/upload/upload_screen.dart';
import 'package:giga_share/widgets/boxes.dart';
import 'package:giga_share/widgets/custom_home_button.dart';
import 'package:giga_share/widgets/history_card.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'GIGA SHARE',
          style: TextStyle(
            letterSpacing: 1.2,
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomHomeButton(
                        icon: Iconsax.additem,
                        text: 'Upload',
                        onPressed: () {
                          Get.to(() => UploadScreen());
                        },
                      ),
                      CustomHomeButton(
                        icon: Iconsax.document_download,
                        text: 'Receive',
                        onPressed: () {
                          Get.to(() => ReceiveScreen());
                        },
                      ),
                      CustomHomeButton(
                        icon: Iconsax.share,
                        text: 'Invite',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 5,
                  bottom: 15,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Recently Transactions',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    Expanded(child: Container()),
                    InkWell(
                      onTap: () {
                        Get.to(() => HistoryScreen());
                      },
                      child: Icon(
                        Iconsax.arrow_21,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                width: double.infinity,
                child: ValueListenableBuilder<Box<UserModel>>(
                  valueListenable: Boxes.getTransactions().listenable(),
                  builder: (context, box, _) {
                    final transactions = box.values.toList().cast<UserModel>();
                    return HistoryCard(
                      transactions: transactions,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
