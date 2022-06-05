import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/controllers/list_controller.dart';
import 'package:learning_getx/controllers/tap_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //We can find Controller like this Get.find<TapController>() and we can access the function of controller.
    //We can find Controller like this TapController tapController = Get.find();
    ListController listController = Get.put(ListController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Column(
                children: [
                  //X+Z total
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: double.maxFinite,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.lightBlueAccent),
                    child: Center(
                      child: Text(
                        "X + Z = ${Get.find<TapController>().result}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  //Z value upgrade
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: double.maxFinite,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.lightBlueAccent),
                    child: Center(
                      child: Text(
                        //just need to find the controller using this 2 way.
                        "Z value = ${Get.find<TapController>().z}",
                        //tapController.x.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Increase z value
            GestureDetector(
              onTap: () {
                Get.find<TapController>().increaseZ();
                //tapController.increaseZ();
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: Center(
                  child: Text(
                    "Increase Z + ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            //showing x value
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlueAccent),
              child: Center(
                child: Text(
                  //just need to find the controller using this 2 way.
                  "X value = ${Get.find<TapController>().x}",
                  //tapController.x.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //get total value
            GestureDetector(
              onTap: () {
                Get.find<TapController>().totalValue();
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: Center(
                  child: Text(
                    "Click to get total",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            //store total value into list
            GestureDetector(
              onTap: () {
                Get.find<ListController>()
                    .setValues(Get.find<TapController>().result);
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent),
                child: Center(
                  child: Text(
                    "Click to save Total value",
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
