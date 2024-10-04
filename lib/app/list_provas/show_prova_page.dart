import 'dart:convert';
import 'dart:developer';

import 'package:desafio_enem/classes/prova.dart';
import 'package:desafio_enem/classes/questao.dart';
import 'package:desafio_enem/layouts/scaffold_base.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ShowProvaPage extends StatefulWidget {
  const ShowProvaPage({super.key});

  @override
  State<ShowProvaPage> createState() => _ShowProvaPageState();
}

class _ShowProvaPageState extends State<ShowProvaPage> {
  int? ano;
  Future<String> get _prova async {
    return _makeHttpRequest(anoProva: ano!);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ano = int.tryParse(ModalRoute.of(context)!.settings.arguments.toString());
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      title: 'Prova $ano',
      body: FutureBuilder<String>(
        future: _prova,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Erro: ${snapshot.error}'),
            );
          } else {
            Map<String, dynamic> data = jsonDecode(snapshot.data!);
            Prova prova = Prova.fromMap(data);
            return GridView.builder(
              clipBehavior: Clip.antiAlias,
              itemCount: prova.questoes!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 80,
              ),
              itemBuilder: (context, index) {
                Questao questao = prova.questoes![index];
                return Card(
                  child: GridTile(
                    header: Text(questao.discipline),
                    footer: Text('Questão ${questao.index}'),
                    child: Center(child: Text(questao.title)),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

Future<String> _makeHttpRequest({required int anoProva}) async {
  Response response = await http.get(
    Uri.parse('https://api.enem.dev/v1/exams/$anoProva'),
  );
  switch (response.statusCode) {
    case 200:
      log('Response: ${response.body}');
      break;
    case 400:
      throw Exception('Bad request');
    case 404:
      throw Exception('Not found');
    case 422:
      throw Exception('Unprocessable entity');
    case 429:
      throw Exception('Too many requests');
    case 500:
      throw Exception('Internal server error');
    default:
      throw Exception('Failed to load data');
  }
  return response.body;
}
