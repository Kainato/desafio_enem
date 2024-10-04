import 'dart:convert';

import 'package:desafio_enem/classes/disciplina.dart';
import 'package:desafio_enem/classes/linguagem.dart';
import 'package:desafio_enem/classes/questao.dart';

class Prova {
  String title;
  int? year;
  List<Disciplina> disciplines;
  List<Linguagem> linguagens;
  List<Questao>? questoes;

  Prova({
    required this.title,
    this.year,
    required this.disciplines,
    required this.linguagens,
    this.questoes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'year': year,
      'disciplines': disciplines.map((x) => x.toMap()).toList(),
      'languages': linguagens.map((x) => x.toMap()).toList(),
      'questions': questoes?.map((x) => x.toMap()).toList(),
    };
  }

  factory Prova.fromMap(Map<String, dynamic> map) {
    return Prova(
      title: map['title'].toString(),
      year: int.tryParse(map['year'].toString()),
      disciplines: List<Disciplina>.from(
        (map['disciplines'] as List<dynamic>).map<Disciplina>(
          (x) => Disciplina.fromMap(x as Map<String, dynamic>),
        ),
      ),
      linguagens: List<Linguagem>.from(
        (map['languages'] as List<dynamic>).map<Linguagem>(
          (x) => Linguagem.fromMap(x as Map<String, dynamic>),
        ),
      ),
      questoes: List<Questao>.from(
        (map['questions'] as List<dynamic>).map<Questao>(
          (x) => Questao.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Prova.fromJson(String source) =>
      Prova.fromMap(json.decode(source) as Map<String, dynamic>);
}
