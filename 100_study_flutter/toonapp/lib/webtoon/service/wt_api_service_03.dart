// webtoon crawler api for education
// 선천적얼간이들 478261
// https://webtoon-crawler.nomadcoders.workers.dev/478261/ // 웹툰 기본 정보
// https://webtoon-crawler.nomadcoders.workers.dev/478261/episodes // 에피소드별

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_detail_model.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_episode_model_01.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_model_02.dart';

var log = Logger();

class ApiService03 {
  static String baseURL = "https://webtoon-crawler.nomadcoders.workers.dev/";
  static String today = "today";
  // static String today = "478261";

  static Future<List<WebtoonModel02>> getToonApi() async {
    List<WebtoonModel02> webtoonInstances = [];

    final url = Uri.parse("$baseURL$today");
    final response = await http.get(url);

    // var resStatus = response.statusCode;
    // log.d("response status $resStatus");
    if (response.statusCode == 200) {
      final List<dynamic> webtoonJson = jsonDecode(response.body);
      for (var webtoon in webtoonJson) {
        // log.i(webtoon);

        // final toonApi = WebtoonModel02.fromJson(webtoon);
        // log.i(toonApi.title);

        webtoonInstances.add(WebtoonModel02.fromJson(webtoon));
      }
      // log.i(response.body);
      return webtoonInstances;
    }

    throw Error();
  }

  static Future<WebtoonDetailModel01> getDetailById(String id) async {
    // https://webtoon-crawler.nomadcoders.workers.dev/478261
    final url = Uri.parse(baseURL + id);
    final res = await http.get(url);

    log.d("url address $url");
    var responseStatusCode = res.statusCode;
    log.d("res.statusCode $responseStatusCode");

    if (res.statusCode == 200) {
      log.d("res.statusCode connect success");
      final webtoonDeatilJson = jsonDecode(res.body);
      return WebtoonDetailModel01.fromJson(webtoonDeatilJson);
    }
    log.d("res.statusCode connect failed =====");
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel01>> getEpisodeById(String id) async {
    // https://webtoon-crawler.nomadcoders.workers.dev/478261
    final url = Uri.parse("$baseURL$id/episodes");
    final res = await http.get(url);

    final List<WebtoonEpisodeModel01> episodeInstance = [];

    log.d("url address episodeInstance $url");
    var responseStatusCode = res.statusCode;
    log.d("res.statusCode $responseStatusCode");

    if (res.statusCode == 200) {
      log.d("res.statusCode episodeInstance connect success");
      final webtoonEpisodesJson = jsonDecode(res.body);

      for (var episode in webtoonEpisodesJson) {
        episodeInstance.add(WebtoonEpisodeModel01.fromJson(episode));
      }
      return episodeInstance;
    }
    log.d("res.statusCode connect failed =====");
    throw Error();
  }
}
