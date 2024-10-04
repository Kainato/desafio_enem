import 'dart:convert';

class Linguagem {
  String label;
  String value;

  Linguagem({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory Linguagem.fromMap(Map<String, dynamic> map) {
    return Linguagem(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Linguagem.fromJson(String source) =>
      Linguagem.fromMap(json.decode(source) as Map<String, dynamic>);
}
