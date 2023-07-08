class MetaDataClass {
  String? title;
  String? date;
  String? author;

  MetaDataClass({this.title, this.date, this.author});

  MetaDataClass.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    date = json['date'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['date'] = date;
    data['author'] = author;
    return data;
  }
}
