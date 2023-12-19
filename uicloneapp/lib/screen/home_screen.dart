import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../model/date_calculator.dart';

var log = Logger();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log.d('start home screen build');
    final dateCal = DateCalculator();

    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'UI Clone App',
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'assets/images/cat_512_sample.png',
                      width: 50,
                    ),
                  ),
                ),
                const Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  '${dateCal.getDayOfWeek()} ${dateCal.getFormattedDateDay()}',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'TODAY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  '·',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 50,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80, // 높이를 적절히 지정
                    child: makeDaysList(dateCal.getDaysList()),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 800, // 높이를 적절히 지정
                    child: makeCard(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ListView makeDaysList(List<int> daysList) {
    // log.d('makeDaysList');
    // log.d(daysList);
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 50,
          child: Center(
            child: Text(
              daysList[index].toString(),
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 40,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
      itemCount: daysList.length,
    );
  }

  ListView makeCard() {
    List<Map<String, dynamic>> cards = [
      {
        'title': 'design',
        'content': 'meeting',
        'startTime': '1130',
        'endTime': '1220',
        'participand': [
          'ALEX',
          'HELENA',
          'NANA',
        ],
      },
      {
        'title': 'daily',
        'content': 'project',
        'startTime': '1235',
        'endTime': '1410',
        'participand': [
          'ME',
          'RICHARD',
          'CIRY',
          'QWER',
          'ASDF',
          'ZXCV',
          'POIU',
        ],
      },
      {
        'title': 'weekly',
        'content': 'planning',
        'startTime': '1500',
        'endTime': '1630',
        'participand': [
          'DEN',
          'NANA',
          'MARK',
        ],
      },
      {
        'title': 'dump',
        'content': 'testing',
        'startTime': '1700',
        'endTime': '1730',
        'participand': [
          'ME',
          'QWER',
          'ASDF',
          'ZXCV',
        ],
      },
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return buildCard(cards[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: cards.length,
    );
  }

  Widget buildCard(Map<String, dynamic> card) {
    final Random random = Random();
    final Color randomColor =
        Colors.primaries[random.nextInt(Colors.primaries.length)];

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0), // 원하는 radius 값으로 설정
      ),
      elevation: 5,
      margin: const EdgeInsets.all(0),
      color: randomColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 좌측에 세로로 시작시간과 끝나는 시간 출력
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  card['startTime'].toString().substring(0, 2),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  card['startTime'].toString().substring(2, 4),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 1, // 세로 구분선의 너비
                  height: 30, // 세로 구분선의 높이
                  color: Colors.black, // 세로 구분선 색상
                ),
                const SizedBox(height: 8),
                Text(
                  card['endTime'].toString().substring(0, 2),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  card['endTime'].toString().substring(2, 4),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            // Title과 Content 출력
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card['title'].toString().toUpperCase(),
                    style: const TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    card['content'].toString().toUpperCase(),
                    style: const TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // 참석자들을 Wrap으로 가로로 출력
                  Wrap(
                    spacing: 8, // 각 참석자 간의 간격
                    runSpacing: 8, // 각 라인 간의 간격
                    children: [
                      for (int i = 0; i < card['participand'].length; i++)
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            i < 4
                                ? card['participand'][i]
                                : (i == 4
                                    ? '+${card['participand'].length - 4}'
                                    : ''),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: card['participand'][i]
                                          .toString()
                                          .toUpperCase() ==
                                      'ME'
                                  ? Colors.black
                                  : Colors.black54,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
