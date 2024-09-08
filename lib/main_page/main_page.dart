import 'package:flutter/material.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/04_bloc/bloc_page.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/02_change_notifier/reatividade_change_notifier_page.dart';
import 'package:unipar_aula_reatividade_flutter/02_reatividades/05_cubit/cubit_page.dart';
import 'package:unipar_aula_reatividade_flutter/01_sem_reatividade/reatividade_off_page.dart';
import 'package:unipar_aula_reatividade_flutter/03_reatividade_com_state_pattern/reatividade_state_pattern_page.dart';

import '../02_reatividades/01_set_state/reatividade_set_state_page.dart';
import '../02_reatividades/03_value_notifier/reatividade_value_notifier_page.dart';
import '../flutter_cart_example/flutter_cart_example.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Unipar: Aula Reatividade Flutter',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReatividadeOffPage(
                    title: 'Sem Reatividade',
                  ),
                ),
              ),
              child: const Text(
                'Sem Reatividade',
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReatividadeSetStatePage(
                    title: 'Reatividade com SetState',
                  ),
                ),
              ),
              child: const Text(
                'Reatividade com SetState',
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReatividadeChangeNotifierPage(
                    title: 'Reatividade com ChangeNotifier',
                  ),
                ),
              ),
              child: const Text(
                'Reatividade com ChangeNotifier',
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReatividadeValueNotifierPage(
                    title: 'Reatividade com ValueNotifier',
                  ),
                ),
              ),
              child: const Text(
                'Reatividade com ValueNotifier',
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BlocPage(),
                ),
              ),
              child: const Text(
                'Reatividade com Bloc',
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CubitPage(),
                ),
              ),
              child: const Text(
                'Reatividade com Cubit',
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReatividadeStatePatternPage(
                    title: 'Reatividade com State Pattern',
                  ),
                ),
              ),
              child: const Text(
                'Reatividade com State Pattern',
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const FlutterCartExample(),
                ),
              ),
              child: const Text(
                'Flutter Cart Example',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
