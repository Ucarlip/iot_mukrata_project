import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iot_mukrata_project/views/about_ui.dart';
import 'package:iot_mukrata_project/views/cal_bill_ui.dart';
import 'package:iot_mukrata_project/views/menu_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //ตัวควบคุมการเปลี่ยนหน้าของ item ใน AnimatedNotchBottomBar
  final itemCtrl = NotchBottomBarController(index: 1);
  //สร้างตัวเเปรเก็บ UI ที่จะใช้เเสดงซึ่งล้อกับ item ใน AnimatedNotchBottomBar
  List<Widget> itemUIShow = [
    CallBillUI(),
    MenuUI(),
    AboutUi(),
  ];
  //สร้างตัวเเปรเก็บ index ของ item ที่เลือก
  int selectIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Tech SAU BUFFET',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedNotchBottomBar(
            onTap: (valueParam) {
              setState(
                () {
                  selectIndex = valueParam;
                },
              );
            },
            notchBottomBarController: itemCtrl,
            color: Colors.deepOrange,
            notchColor: Colors.white,
            kIconSize: 24.0,
            kBottomRadius: 28.0,
            bottomBarItems: [
              BottomBarItem(
                itemLabel: 'คิดเงิน',
                activeItem: Icon(
                  FontAwesomeIcons.moneyBill1Wave,
                  color: Colors.white,
                ),
                inActiveItem: Icon(
                  FontAwesomeIcons.moneyBill1Wave,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              BottomBarItem(
                itemLabel: 'หน้าหลัก',
                activeItem: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                inActiveItem: Icon(
                  Icons.home,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              BottomBarItem(
                itemLabel: 'เกี่ยวกับ',
                activeItem: Icon(
                  FontAwesomeIcons.star,
                  color: Colors.white,
                ),
                inActiveItem: Icon(
                  FontAwesomeIcons.star,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ],
      ),
      body: itemUIShow[selectIndex],
    );
  }
}
