import 'package:flutter/material.dart';
import 'package:singlenton/pages/pagina1.dart';
import 'package:singlenton/pages/pagina2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      routes: {
        'pagina1': ( _ ) => Pagina1Page(),
        'pagina2': ( _ ) => Pagina2Page()
      },
    );
  }
}