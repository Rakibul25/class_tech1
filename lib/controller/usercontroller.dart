import 'package:class_tech/models/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final usernameController = TextEditingController().obs;
  final mobileController = TextEditingController().obs;
  final addressController = TextEditingController().obs;
  var name = "".obs;
  var mobile;
  var address;
  var userModel = UserModel().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void getData() {
    userModel.update((UserModel) {
      userModel.value.name = usernameController.value.text;
      userModel.value.mobile = mobileController.value.text;
      userModel.value.address = addressController.value.text;
    });
    // userModel.value.name = usernameController.value.text;
    // userModel.value.mobile = mobileController.value.text;
    // userModel.value.address = addressController.value.text;
    // Get.to(ShowPage());
    print(userModel.value.name);
  }
}
