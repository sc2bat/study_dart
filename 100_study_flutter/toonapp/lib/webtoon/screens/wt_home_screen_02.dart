import 'package:flutter/material.dart';
import 'package:toonapp/webtoon/service/wt_api_service_02.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_model_02.dart';

class HomeScreen02 extends StatefulWidget {
  const HomeScreen02({super.key});

  @override
  State<HomeScreen02> createState() => _HomeScreen02State();
}

class _HomeScreen02State extends State<HomeScreen02> {
  List<WebtoonModel02> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async {
    log.d("start waitForWebToons");
    webtoons = await ApiService02.getToonApi();
    isLoading = false;
    setState(() {
      log.d("setstate waitForWebToons");
    });
    log.d("end waitForWebToons");
  }

  @override
  void initState() {
    log.d("start initState");
    super.initState();
    waitForWebToons();
    log.d("end initState");
  }

  @override
  Widget build(BuildContext context) {
    log.d("start build");
    log.d(webtoons);
    log.d(isLoading);

    log.d("start build return");
    // return const Placeholder();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white70,
        foregroundColor: Colors.blueAccent,
        title: const Text(
          "webtoon app",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
