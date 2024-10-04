import 'dart:convert';

class Disciplina {
  String label;
  String value;

  Disciplina({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory Disciplina.fromMap(Map<String, dynamic> map) {
    return Disciplina(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Disciplina.fromJson(String source) => Disciplina.fromMap(json.decode(source) as Map<String, dynamic>);
}
