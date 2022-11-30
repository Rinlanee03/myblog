import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myblog/constants.dart';
import 'package:myblog/screencs/home/home_screen.dart';
import 'package:myblog/screencs/main/header.dart';
import 'package:myblog/screencs/main/side_menu.dart';

import '../../controller/MenuController.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth:  kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            )
          ],
        ),
      ),
    );
  }
}