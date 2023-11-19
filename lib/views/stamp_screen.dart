import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/utils/string.dart';

class StampScreenScreen extends StatelessWidget {
  const StampScreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.blueAccent.shade100,
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    15.0,
                    15.0,
                    15.0,
                    15.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        alignment: Alignment.center,
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.blueAccent.shade200),
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        stampCardDetailsStr,
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.minus_circle,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    15.0,
                    0.0,
                    15.0,
                    15.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        merKitchenStr,
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: currentNumberOfAcquisitionsStr,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                            TextSpan(
                              text: '30',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: individualStr,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height * 0.25,
                        width: size.width,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: 30,
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemBuilder: (context, index) {
                            return Image.asset(
                              "lib/images/tick.png",
                            );
                          },
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '2/2 $ndPhotoStr',
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                      const Text(
                        stampAcquisitionHistoryStr,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(top: 8.0),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) =>  ListTile(
                          title: Text(
                            dateListTile[index],
                            style:
                                const TextStyle(color: Colors.grey, fontSize: 18.0),
                          ),
                          subtitle: const Text(
                            earnedStampStr,
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                          trailing: const Text(
                            '1$pieceStr',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
