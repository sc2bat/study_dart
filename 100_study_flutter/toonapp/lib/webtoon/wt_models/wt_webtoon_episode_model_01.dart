class WebtoonEpisodeModel01 {
  // {"thumb":"https://image-comic.pstatic.net/webtoon/478261/87/thumbnail_202x120_10d8a9ea-6c6c-4f5a-93ac-bb8b9049a2f1.jpg",
  //"id":"87",
  //"title":"EP.83_북행 이남 (下)",
  //"rating":"9.98",
  //"date":"23.11.15"}
  final String thumb, id, title, rating, date;

  WebtoonEpisodeModel01.fromJson(Map<String, dynamic> json)
      : thumb = json["thumb"],
        id = json["id"],
        title = json["title"],
        rating = json["rating"],
        date = json["date"];
}
