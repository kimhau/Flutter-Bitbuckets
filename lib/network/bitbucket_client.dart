import 'package:flutter_bitbuckets/models/bitbucket_response.dart';
import 'package:get/get.dart';

const BASE_URL = 'https://api.bitbucket.org/2.0';

class BitbucketApiClient extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = BASE_URL;
    httpClient.defaultDecoder = (val) => BitbucketResponse.fromJson(val as Map<String, dynamic>);
  }

  Future<Response<BitbucketResponse>> fetchBitbucketList({String after = "1900-01-01"}) => get('/repositories', query: {"after": after});
}
