import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_bionic/controllers/homecontroller.dart';
import 'package:test_bionic/screens/listmatkul.dart';
import 'package:test_bionic/screens/profilescreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final homeC = Get.put(HomeController());
    return Scaffold(
      body: Obx(() {
        switch (homeC.selectecIndex.value) {
          case 0:
            return const ListMatkulScreen();
          case 1:
            return const PorifleScreen();
          default:
            return const Center(
              child: Text('Home'),
            );
        }
      }),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepPurple,
        buttonBackgroundColor: Colors.white,
        items: const [
          Icon(
            Icons.menu_book,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.person,
            color: Colors.deepPurple,
          ),
        ],
        onTap: (index) {
          homeC.changeIndex(index);
        },
      ),
    );
  }
}
