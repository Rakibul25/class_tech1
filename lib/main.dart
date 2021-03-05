import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/usercontroller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final userController = Get.put(UserController());
// final usernameController = TextEditingController();
//   final mobileController = TextEditingController();
//   final addressController = TextEditingController();
//   var name = "";
//   var mobile;
//   var address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crud Application"),
      ),
      body: Container(
        // color: Colors.red,
        margin: EdgeInsets.all(20),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              // showText(userController.usernameController.value, "User Name"),
              // SizedBox(
              //   height: 20,
              // ),
              // showText(userController.mobileController.value, "Mobile"),
              // SizedBox(
              //   height: 20,
              // ),
              // showText(userController.addressController.value, "Address"),

              Obx(
                () => TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      hintText: "User Name",
                      prefixIcon: Icon(Icons.verified_user)),
                  controller: userController.usernameController.value,
                  onChanged: (value) {
                    // print(value);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      hintText: "Mobile",
                      prefixIcon: Icon(Icons.verified_user)),
                  controller: userController.mobileController.value,
                  onChanged: (value) {
                    // print(value);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      hintText: "Address",
                      prefixIcon: Icon(Icons.verified_user)),
                  controller: userController.addressController.value,
                  onChanged: (value) {
                    // print(value);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  userController.getData();
                },
                child: Text("submit"),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 5,
                color: Colors.blue,
              ),

              // GetX<UserController>(builder: (controller) {
              //   return Text(
              //     'Total amount: \$ ${controller.name}',
              //     style: TextStyle(fontSize: 32, color: Colors.white),
              //   );
              // }),
              Card(
                child: Column(
                  children: [
                    Obx(
                      () => userController.userModel.value.name != null
                          ? Text(userController.userModel.value.name)
                          : Text("data not found"),
                    ),
                    Obx(
                      () => userController.userModel.value.mobile != null
                          ? Text(userController.userModel.value.mobile)
                          : Text("data not found"),
                    ),
                    Obx(
                      () => userController.userModel.value.address != null
                          ? Text(userController.userModel.value.address)
                          : Text("data not found"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showText(TextEditingController controller, var a) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 2),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          hintText: a,
          prefixIcon: Icon(Icons.verified_user)),
      controller: controller,
      onChanged: (value) {
        // print(value);
      },
    );
  }
}
