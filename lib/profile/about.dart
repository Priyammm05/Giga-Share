// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'About',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 120,
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child:
                        Image.asset('images/IPFS_img.png', fit: BoxFit.cover),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'version - 1.0.0',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ExpansionTile(
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black87,
              ),
              title: Text(
                'Introduction',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  child: Text(
                    '''
Giga Share is an mobile application that uploads the content to IPFS and generates decentralized QR codes. It is compatible with any android phones. Built by BUIDL Tools.
      ''',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            ExpansionTile(
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black87,
              ),
              title: Text(
                'Benefits',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  child: Text(
                    '''
Giga Share allows you to quickly upload images/videos or files to IPFS by using web3 storage and get a "decentralized QR code" with IPFS CID. Later you can share the QR code or hosted gateway link with everyone for easy and decentralized file sharing.
      
Benefits of Giga Share for file sharing:
  • Decentralized storage
  • Unlimited uploads
  • Fast upload speed
  • Zero compression
  • Private
  • Free to use
  • User-friendly
''',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
