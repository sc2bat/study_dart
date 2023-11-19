import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:toonapp/webtoon/service/wt_api_service_02.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_model_02.dart';

var log = Logger();

class HomeScreen03 extends StatelessWidget {
  HomeScreen03({super.key});

  final Future<List<WebtoonModel02>> webtoons = ApiService02.getToonApi();

  @override
  Widget build(BuildContext context) {
    log.d("start build");
    log.d(webtoons);
    log.d("load webtoons done");

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
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // return const Text("data load success"); // 001
            /* // 002 ListView
            return ListView(
              children: [
                for (var webtoon in snapshot.data!) Text(webtoon.title),
              ],
            );
            */
            /**
             * 003 ListView.builder
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                log.d("index $index");
                var webtoon = snapshot.data![index];
                return Text(webtoon.title);
              },
            );
             */
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: makeWebtoonList(snapshot),
                ),
              ],
            );
          } else {
            // return const Text("Loading...");
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView makeWebtoonList(AsyncSnapshot<List<WebtoonModel02>> snapshot) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var webtoon = snapshot.data![index];
          log.d(webtoon.thumb);
          return Column(
            children: [
              Container(
                width: 150,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        offset: Offset(4, 4),
                        blurRadius: 10,
                      ),
                    ]),
                child: Image.network(
                  webtoon.thumb,
                  headers: const {
                    "User-Agent":
                        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                webtoon.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              // Text(webtoon.rating),
              Text(webtoon.id),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
        itemCount: snapshot.data!.length);
  }
}
