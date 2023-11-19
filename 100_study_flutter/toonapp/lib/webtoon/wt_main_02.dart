import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:toonapp/webtoon/screens/wt_home_screen_01.dart';
import 'package:toonapp/webtoon/screens/wt_home_screen_02.dart';

var log = Logger();

// webtoon crawler api for education
// 선천적얼간이들 478261
// https://webtoon-crawler.nomadcoders.workers.dev/478261/ // 웹툰 기본 정보
// https://webtoon-crawler.nomadcoders.workers.dev/478261/episodes // 에피소드별

void main() {
  log.i("running webtoon main");

  runApp(const WebtoonApp());
  log.i("runApp is done");
}

class WebtoonApp extends StatelessWidget {
  const WebtoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return const MaterialApp(
      home: HomeScreen02(),
    );
  }
}
