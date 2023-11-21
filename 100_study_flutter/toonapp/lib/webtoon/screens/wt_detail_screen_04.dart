import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toonapp/webtoon/service/wt_api_service_03.dart';
import 'package:toonapp/webtoon/widget/wt_episode_widget_01.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_detail_model.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_episode_model_01.dart';

class DetailScreen04 extends StatefulWidget {
  final String title, thumb, id;

  const DetailScreen04({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<DetailScreen04> createState() => _DetailScreen04State();
}

class _DetailScreen04State extends State<DetailScreen04> {
  late Future<WebtoonDetailModel01> webtoon;
  late Future<List<WebtoonEpisodeModel01>> webtoonEpisodes;

  // get liked
  late SharedPreferences prefs;
  // check liked bool
  bool isLiked = false;

  Future initPreferences() async {
    prefs = await SharedPreferences.getInstance();
    final List<String>? likedToon = prefs.getStringList('likedToon');

    if (likedToon != null) {
      if (likedToon.contains(widget.id) == true) {
        isLiked = true;
        setState(() {});
      }
    } else {
      prefs.setStringList("likedToon", []);
    }
  }

  @override
  void initState() {
    super.initState();
    webtoon = ApiService03.getDetailById(widget.id);
    webtoonEpisodes = ApiService03.getEpisodeById(widget.id);

    // get liked init
    initPreferences();
  }

  // likedToons : [1, 2, 3, 4];
  onHeartTap() async {
    final List<String>? likedToon = prefs.getStringList('likedToon');
    if (likedToon != null) {
      if (isLiked) {
        likedToon.remove(widget.id);
      } else {
        likedToon.add(widget.id);
      }
      await prefs.setStringList("likedToon", likedToon);

      setState(() {
        isLiked = !isLiked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150,
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white70,
        foregroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: onHeartTap,
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border_outlined,
            ),
          ),
        ],
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
          child: Column(
            children: [
              // const SizedBox(
              //   height: 50,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.id,
                    child: Container(
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
                        widget.thumb,
                        headers: const {
                          "User-Agent":
                              "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              // Text(webtoon.rating),
              // Text(widget.id),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: webtoon,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${snapshot.data!.genre} // ${snapshot.data!.age}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          snapshot.data!.about,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    );
                  }
                  return const Text("loading about ...");
                },
              ),
              FutureBuilder(
                  future: webtoonEpisodes,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          for (var episode in snapshot.data!)
                            // Text(
                            //   episode.title,
                            // ),
                            EpisodeWidget01(
                                episode: episode, webtoonId: widget.id),
                        ],
                      );
                    }
                    return const Text("Loading episodesss...");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
