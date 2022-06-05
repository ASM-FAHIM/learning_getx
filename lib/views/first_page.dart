import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 25,
              color: Colors.black,
            )),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: Center(
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
                      tapController.x.toString(),
                      // tapController.y.toString(),
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
                    )
                  ],
                )),
              );
            }),
            GestureDetector(
              onTap: () {
                tapController.decreaseX();
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
                    "Hello Getx",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
