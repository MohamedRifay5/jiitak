import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jiitak/utils/string.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      alignment: Alignment.center,
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.back,
                        color: Colors.grey,
                      ),
                    ),
                    const Text(
                      editStoreProfileStr,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_outlined,
                            size: 35.0,
                            color: Colors.black54,
                          ),
                        ),
                        Positioned(
                          top: 10.0,
                          left: 25.0,
                          child: Container(
                            height: 20.0,
                            width: 25.0,
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: const Text(
                              '99+',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 18.0),
                        labelText: storeName,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 18.0),
                          labelText: representativeName,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 18.0),
                          labelText: phoneNumber,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 18.0),
                          labelText:storeAddress,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        width: size.width,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/images/map.jpg'),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          storeExterior,
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        width: 100.0,
                        height: 120.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/images/kk.jpg'),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.cancel_outlined,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          storeInterior,
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        width: 100.0,
                        height: 120.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/images/kk.jpg'),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.cancel_outlined,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          foodPhotos,
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        width: 100.0,
                        height: 120.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/images/kk.jpg'),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.cancel_outlined,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          menuPhotos,
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(
                        width: 100.0,
                        height: 120.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/images/kk.jpg'),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.cancel_outlined,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelStyle:
                          TextStyle(color: Colors.black, fontSize: 18.0),
                          labelText: visitGiftName,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 12.0,left: 5.0,right: 5.0,bottom: 12.0),
                        child: SizedBox(
                          width: size.width,
                          child: MaterialButton(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: () {},
                            color: Colors.deepOrangeAccent,
                            child: const Text(
                              'Save edits',
                              style:
                                  TextStyle(fontSize: 15.0, color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
