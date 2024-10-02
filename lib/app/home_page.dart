import 'dart:developer';

import 'package:desafio_enem/config/app_routes.dart';
import 'package:desafio_enem/layouts/scaffold_base.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      title: 'Página Inicial',
      hasDrawer: true,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _makeHttpRequest();
          },
          child: const Text('Fazer requisição HTTP'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.settings.route);
        },
        child: const Icon(Icons.settings),
      ),
    );
  }
}

Future<Response> _makeHttpRequest() async {
  final Response response =
      await http.get(Uri.parse('https://api.enem.dev/v1/exams/2023'));
  if (response.statusCode == 200) {
    // Handle the successful response here
    log(response.toString(), name: 'HTTP request successful');
    // Do something with the response data
    final responseData = response.body;
    log(responseData.toString(), name: 'HTTP request body');
  } else {
    // Handle the error response here
    log('HTTP request failed with status code: ${response.statusCode}');
  }
  return response;
}
