import 'package:desafio_enem/config/app_routes.dart';
import 'package:flutter/material.dart';

class ListProvasPage extends StatefulWidget {
  const ListProvasPage({super.key});

  @override
  State<ListProvasPage> createState() => _ListProvasPageState();
}

class _ListProvasPageState extends State<ListProvasPage> {
  @override
  void initState() {
    super.initState();
    // Inicializações que não dependem de InheritedWidget
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Código que depende de InheritedWidget
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 2023 - 2008,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (MediaQuery.of(context).size.width ~/ 250).toInt(),
        mainAxisExtent: 80,
      ),
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('Prova ${2023 - index}'),
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.prova.route,
                arguments: 2023 - index,
              );
            },
          ),
        );
      },
    );
  }
}
