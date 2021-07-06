import 'package:flutter_bitbuckets/network/bitbucket_client.dart';
import 'package:flutter_bitbuckets/repositories/bitbucket_repository.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BitbucketApiClient>(() => BitbucketApiClient());
    Get.lazyPut<IBitbucketRepository>(() => BitbucketRepository(apiClient: Get.find()));
    Get.lazyPut(() => HomeController(bitbucketRepository: Get.find()));
  }
}
