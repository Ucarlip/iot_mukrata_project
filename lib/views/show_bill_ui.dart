import 'dart:io';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowBillUi extends StatelessWidget {
  //สร้างตัวแปรเพื่อรับข้อมูลที่จะส่งมาจากหน้า CallBillUI
  int? numAdult;
  int? numChild;
  int? numCoke;
  int? numPure;
  double? payWaterBuffet;
  double? payBuffetTotalNosale;
  double? paySale;
  double? payBuffetTotal;
  File? imageFile;

  //เอาตัวแปรที่สร้างไปรับข้อมูลที่ส่งมา
  ShowBillUi({
    super.key,
    this.numAdult,
    this.numChild,
    this.numCoke,
    this.numPure,
    this.payWaterBuffet,
    this.payBuffetTotalNosale,
    this.paySale,
    this.payBuffetTotal,
    File? imageFile,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'ใบเสร็จจ่ายเงิน',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              imageFile == null
                  ? Image.asset(
                      'assets/images/camera.jpg',
                      width: 200,
                      height: 200,
                    )
                  : Image.file(
                      imageFile!,
                      width: 200,
                      height: 200,
                    ),
              SizedBox(height: 40),
              Text(
                'จำนวนผู้ใหญ่ $numAdult คน',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'จำนวนเด็ก $numChild คน',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'จำนวนโค้ก $numCoke ขวด',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'จำนวนน้ำเปล่า $numPure ขวด',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'จำนวนเงินบุฟ้ฟต์น้ำ $payWaterBuffet บาท',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'ส่วนลดเป็นเงิน $paySale บาท',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'รวมต้องจ่าย $payBuffetTotal บาท',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage('assets/images/payqr.png'),
                width: 250,
                height: 250,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
