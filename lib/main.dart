import 'package:flutter/material.dart';
import 'package:iot_mukrata_project/views/splash_screen_ui.dart';

void main() {
  runApp(const IotMukrataProject());
}

class IotMukrataProject extends StatefulWidget {
  const IotMukrataProject({super.key});

  @override
  State<IotMukrataProject> createState() => _IotMukrataProjectState();
}

class _IotMukrataProjectState extends State<IotMukrataProject> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
    );
  }
}
