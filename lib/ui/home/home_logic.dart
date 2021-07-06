import 'package:flutter_bitbuckets/models/bitbucket.dart';
import 'package:flutter_bitbuckets/repositories/bitbucket_repository.dart';
import 'package:get/get.dart';

class HomeController extends SuperController<List<Bitbucket>> {
  HomeController({required this.bitbucketRepository});
  final IBitbucketRepository bitbucketRepository;
  List<Bitbucket> bitbuckets = List<Bitbucket>.empty(growable: true);
  String? after;

  @override
  void onInit() {
    fetchBitbucketList("1900-01-01");
    super.onInit();
  }

  void fetchBitbucketList(String after) {
    bitbucketRepository.fetchBitbucketList(after).then((result) {
      List<Bitbucket>? data = result.values;
      bitbuckets.addAll(data ?? []);
      this.after = result.next != null ? Uri.decodeComponent(result.next!).replaceAll("https://api.bitbucket.org/2.0/repositories?after=", "") : null;
      if (after == "1900-01-01")
        change(bitbuckets, status: RxStatus.success());
      else
        change(bitbuckets, status: RxStatus.loadingMore());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onDetached() {
    print('onDetached called');
  }

  @override
  void onInactive() {
    print('onInative called');
  }

  @override
  void onPaused() {
    print('onPaused called');
  }

  @override
  void onResumed() {
    print('onResumed called');
  }
}
