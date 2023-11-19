import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controllers/bottom_navigation_controller.dart';
import 'package:jiitak/utils/string.dart';
import 'package:jiitak/views/chat_screen.dart';
import 'package:jiitak/views/home_screen.dart';
import 'package:jiitak/views/jobs_screen.dart';
import 'package:jiitak/views/my_page_screen.dart';
import 'package:jiitak/views/stamp_screen.dart';

class NavigationPage extends StatelessWidget {
  BottomNavigationController bottomNavigationController =
      BottomNavigationController();

  NavigationPage({super.key});

  final screen = [
    HomeScreen(),
    const JobScreen(),
    const ChatScreen(),
    const MyPageScreen(),
    const StampScreenScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: FloatingActionButton(
            backgroundColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            onPressed: () {
              bottomNavigationController.changeIndex(4);
            },
            child: const Icon(
              size: 35.0,
              CupertinoIcons.doc_text_viewfinder,
              color: Colors.white,
            )),
      ),
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          elevation: 0.0,
          color: Colors.white,

          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.white,
                onTap: () {
                  bottomNavigationController.changeIndex(0);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.search,
                      color: bottomNavigationController.selectedIndex.value == 0
                          ? Colors.deepOrangeAccent
                          : Colors.black,
                    ),
                    Text(
                      searchStr,
                      style: TextStyle(
                        color:
                            bottomNavigationController.selectedIndex.value == 0
                                ? Colors.deepOrangeAccent
                                : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.white,
                onTap: () {
                  bottomNavigationController.changeIndex(1);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.work_outline,
                      color: bottomNavigationController.selectedIndex.value == 1
                          ? Colors.deepOrangeAccent
                          : Colors.black,
                    ),
                    Text(
                      jobStr,
                      style: TextStyle(
                        color:
                            bottomNavigationController.selectedIndex.value == 1
                                ? Colors.deepOrangeAccent
                                : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.white,
                onTap: () {
                  bottomNavigationController.changeIndex(2);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.chat_outlined,
                      color: bottomNavigationController.selectedIndex.value == 2
                          ? Colors.deepOrangeAccent
                          : Colors.black,
                    ),
                    Text(
                      chatStr,
                      style: TextStyle(
                        color:
                            bottomNavigationController.selectedIndex.value == 2
                                ? Colors.deepOrangeAccent
                                : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.white,
                onTap: () {
                  bottomNavigationController.changeIndex(3);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      color: bottomNavigationController.selectedIndex.value == 3
                          ? Colors.deepOrangeAccent
                          : Colors.black,
                    ),
                    Text(
                      myPageStr,
                      style: TextStyle(
                        color:
                            bottomNavigationController.selectedIndex.value == 3
                                ? Colors.deepOrangeAccent
                                : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screen,
          )),
    );
  }
}
