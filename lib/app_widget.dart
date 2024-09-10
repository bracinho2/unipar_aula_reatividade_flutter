import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 

import 'main_page/main_page.dart';
import '04_reatividades_com_pacote/bloc/bloc_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      lazy: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const MainPage(),
      ),
    );
  }
}
