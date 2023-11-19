import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/utils/string.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myCurrentIndex = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {},
        child: const Icon(
          size: 35.0,
          Icons.location_on_outlined,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 80.0,
                width: size.width,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        city,
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 35.0,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            CupertinoIcons.heart,
                            size: 35.0,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 30.0,
                width: size.width,
                color: Colors.deepOrangeAccent,
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Center(
                    child: Text(
                      dateBanner,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DatePicker(
                  DateTime.now(),
                  height: 90.0,
                  width: 60.0,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.deepOrangeAccent,
                  selectedTextColor: Colors.white,
                  dateTextStyle: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
                        child: Container(
                          width: size.width,
                          height: 400.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 180.0,
                                width: size.width,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage('lib/images/kk.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                height: 220.0,
                                width: size.width,
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        titleStr,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              paidNurseStr,
                                              style: TextStyle(
                                                  color:
                                                      Colors.deepOrangeAccent,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                          ),
                                          Text(
                                            '¥6,000',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        timingStr,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        locationStr,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        transportStr,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              offerStr,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                          ),
                                          Icon(
                                            CupertinoIcons.heart,
                                            size: 35.0,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        left: 10.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.redAccent,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.0),
                          child: const Text(untilTodayStr,style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
