import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bitbuckets/models/bitbucket_response.dart';
import 'package:flutter_bitbuckets/repositories/bitbucket_repository.dart';
import 'package:flutter_bitbuckets/ui/home/home_logic.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:matcher/matcher.dart' as m;

class MockRepository implements IBitbucketRepository {
  @override
  Future<BitbucketResponse> fetchBitbucketList(String after) async {
    await Future.delayed(Duration(milliseconds: 100));

    if (Random().nextBool()) {
      return BitbucketResponse(pagelen: 10, values: [], next: "https://api.bitbucket.org/2.0/repositories?after=2011-09-03T12%3A33%3A16.028393%2B00%3A00");
    }

    return Future<BitbucketResponse>.error('error');
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpAll(() => HttpOverrides.global = null);
  final binding = BindingsBuilder(() {
    Get.lazyPut<IBitbucketRepository>(() => MockRepository());
    Get.lazyPut<HomeController>(() => HomeController(bitbucketRepository: Get.find()));
  });

  test('Test Binding', () {
    expect(Get.isPrepared<HomeController>(), false);
    expect(Get.isPrepared<IBitbucketRepository>(), false);

    /// test you Binding class with BindingsBuilder
    binding.builder();

    expect(Get.isPrepared<HomeController>(), true);
    expect(Get.isPrepared<IBitbucketRepository>(), true);

    Get.reset();
  });
  test('Test Controller', () async {
    /// Controller can't be on memory
    expect(() => Get.find<HomeController>(), throwsA(m.TypeMatcher<String>()));

    /// build Binding
    binding.builder();

    /// recover your controller
    final controller = Get.find<HomeController>();

    /// check if onInit was called
    expect(controller.initialized, true);

    /// check initial Status
    expect(controller.status.isLoading, true);

    /// await time request
    await Future.delayed(Duration(milliseconds: 100));

    if (controller.status.isError) {
      expect(controller.state, null);
    }

    if (controller.status.isSuccess) {
      expect(controller.after, "2011-09-03T12:33:16.028393+00:00");
      expect(controller.state!.length, 0);
    }
  });
}
