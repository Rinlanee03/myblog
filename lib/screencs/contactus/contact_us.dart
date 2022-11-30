
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myblog/screencs/main/header.dart';
import 'package:myblog/screencs/main/side_menu.dart';

import '../../controller/MenuController.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: Column(
        children: [
          Header()
        ],
      ),
    );
  }
}
