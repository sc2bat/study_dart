// webtoon crawler api for education
// 선천적얼간이들 478261
// https://webtoon-crawler.nomadcoders.workers.dev/478261/ // 웹툰 기본 정보
// https://webtoon-crawler.nomadcoders.workers.dev/478261/episodes // 에피소드별

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_model_02.dart';

var log = Logger();

class ApiService02 {
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
}
