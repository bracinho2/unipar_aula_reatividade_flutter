import 'package:flutter/material.dart';
import 'package:unipar_aula_reatividade_flutter/01_ephemeral_app_state/app_state.dart';

import 'package:unipar_aula_reatividade_flutter/03_reatividades_nativas/02_change_notifier/reatividade_change_notifier_page.dart';

import 'package:unipar_aula_reatividade_flutter/02_sem_reatividade/reatividade_off_page.dart';
import 'package:unipar_aula_reatividade_flutter/05_reatividade_com_state_pattern/reatividade_state_pattern_page.dart';

import '../03_reatividades_nativas/01_set_state/reatividade_set_state_page.dart';
import '../03_reatividades_nativas/03_value_notifier/reatividade_value_notifier_page.dart';
import '../06_flutter_cart_example/flutter_cart_example.dart';
import '../04_reatividades_com_pacote/bloc/bloc_page.dart';
import '../04_reatividades_com_pacote/cubit/cubit_page.dart';

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
                  builder: (_) => const AppState(),
                ),
              ),
              child: const Text(
                'AppState & Ephemeral State',
              ),
            ),
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
            const SizedBox(
              height: 20,
            ),
            const Text('Reatividades Nativas'),
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
            const SizedBox(
              height: 20,
            ),
            const Text('Reatividades com Pacote'),
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
            const SizedBox(
              height: 20,
            ),
            const Text('Reatividade com StatePattern'),
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
            const SizedBox(
              height: 20,
            ),
            const Text('Example'),
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
