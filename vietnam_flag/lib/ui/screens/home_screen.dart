import 'package:flutter/material.dart';
import 'package:vietnam_flag/ui/components/my_circle_widget.dart';
import 'package:vietnam_flag/ui/components/vietnam_flag.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: size.height / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
              children: const [
                Text("Hình tròn đơn giản"),
                MyCircleWidget(),
              ],
            )),
            Expanded(
                child: Column(
              children: const [
                Text("Lá cờ Việt Nam"),
                VietNamFlag(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
