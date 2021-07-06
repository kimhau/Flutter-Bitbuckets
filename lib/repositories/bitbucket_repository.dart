import 'package:flutter_bitbuckets/models/bitbucket_response.dart';
import 'package:flutter_bitbuckets/network/bitbucket_client.dart';

abstract class IBitbucketRepository {
  Future<BitbucketResponse> fetchBitbucketList(String after);
}

class BitbucketRepository implements IBitbucketRepository {
  final BitbucketApiClient apiClient;

  BitbucketRepository({required this.apiClient});

  @override
  Future<BitbucketResponse> fetchBitbucketList(String after) async {
    final res = await apiClient.fetchBitbucketList(after: after);
    if (res.status.hasError) {
      return Future.error(res.statusText!);
    } else {
      return res.body!;
    }
  }
}
