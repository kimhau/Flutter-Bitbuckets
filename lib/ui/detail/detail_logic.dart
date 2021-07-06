import 'package:flutter_bitbuckets/models/bitbucket.dart';
import 'package:get/get.dart';

class DetailLogic extends GetxController {
  Bitbucket? details;

  @override
  void onReady() {
    details = Get.arguments;
    update();
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
