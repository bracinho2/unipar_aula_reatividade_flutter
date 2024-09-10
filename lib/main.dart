import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unipar_aula_reatividade_flutter/app_widget.dart';

import 'injector/app_injector.dart';
import '04_reatividades_com_pacote/bloc/bloc_observer.dart';

void main() {
  AppInjector.registerBinds();
  Bloc.observer = AppBlocObserver();
  runApp(
    const MyApp(),
  );
}
