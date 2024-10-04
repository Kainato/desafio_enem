import 'dart:convert';

class Questao {
  String title;
  int index;
  String discipline;
  String? language;

  Questao({
    required this.title,
    required this.index,
    required this.discipline,
    this.language,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'index': index,
      'discipline': discipline,
      'language': language,
    };
  }

  factory Questao.fromMap(Map<String, dynamic> map) {
    return Questao(
      title: map['title'] as String,
      index: map['index'] as int,
      discipline: map['discipline'] as String,
      language: map['language'] != null ? map['language'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Questao.fromJson(String source) => Questao.fromMap(json.decode(source) as Map<String, dynamic>);
}
