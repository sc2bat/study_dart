class WebtoonModel02 {
  final String title, thumb, id;
  final String rating;
  final String date;

  WebtoonModel02.fromJson(
    Map<String, dynamic> json,
  )   : title = json["title"],
        thumb = json["thumb"],
        id = json["id"],
        rating = json["rating"],
        date = json["date"];
}
