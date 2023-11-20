import 'package:flutter/material.dart';
import 'package:toonapp/webtoon/wt_models/wt_webtoon_episode_model_01.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EpisodeWidget01 extends StatelessWidget {
  const EpisodeWidget01({
    super.key,
    required this.episode,
  });

  final WebtoonEpisodeModel01 episode;

  onButtonTap() async {
    // final url = Uri.parse("https://google.com");
    // await launchUrl(url);
    await launchUrlString("https://google.com");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 2,
                offset: const Offset(5, 5),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
