import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/controllers/tap_controller.dart';
import 'package:learning_getx/views/first_page.dart';
import 'package:learning_getx/views/second_page.dart';

class MyHomePage extends StatelessWidget {
  final TapController tapController = Get.put(TapController());
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController) {
              return GestureDetector(
                onTap: () {
                  tapController.increaseX();
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.lightBlueAccent),
                  child: Center(
                    child: Text(
                      tapController.x.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            }),
            GestureDetector(
              onTap: () {
                //navigation into page
                Get.to(() => FirstPage());
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: const Center(
                  child: Text(
                    "GO to First Page",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SecondPage());
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: const Center(
                  child: Text(
                    "GO to second page",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlueAccent),
              child: const Center(
                child: Text(
                  "Hello Getx",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        tapController.decreaseY();
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 30,
                      ),
                    ),
                    Text(
                      tapController.y.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        tapController.increaseY();
                      },
                      icon: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
