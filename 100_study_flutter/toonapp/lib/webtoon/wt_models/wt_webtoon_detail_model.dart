class WebtoonDetailModel01 {
  final String title, about, genre, age;

  WebtoonDetailModel01.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        about = json["about"],
        genre = json["genre"],
        age = json["age"];
}
