import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:toonapp/webtoon/screens/wt_detail_screen_01.dart';
import 'package:toonapp/webtoon/screens/wt_detail_screen_02.dart';
import 'package:toonapp/webtoon/screens/wt_detail_screen_03.dart';
import 'package:toonapp/webtoon/screens/wt_detail_screen_04.dart';

var log = Logger();

class WebtoonWidget01 extends StatelessWidget {
  final String title, thumb, id;
  const WebtoonWidget01({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTapUp: (details) => log.d("user onTapUP"),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen04(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
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
                thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          // Text(webtoon.rating),
          // Text(id),
        ],
      ),
    );
  }
}
