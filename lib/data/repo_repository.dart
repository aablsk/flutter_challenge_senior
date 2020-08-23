import 'package:flutter_challenge_senior/constants.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class GqlRepository {
  Client client;

  Future<GqlRepository> init(String accessToken) async {
    this.client = Client(
      link: HttpLink(GITHUB_GRAPHQL_API_URL, defaultHeaders: {
        'Authorization': 'bearer $accessToken',
      }),
      cache: await initCache("gql"),
      options: ClientOptions(
        addTypename: true,
      ),
    );
    return this;
  }

  Future<Cache> initCache(String boxName) async {
    Hive.initFlutter();
    final box = await Hive.openBox(boxName);
    final store = HiveStore(box);
    // TODO: look into cache options
    final cache = Cache(
      dataStore: store,
      addTypename: true,
    );
    return cache;
  }
}
