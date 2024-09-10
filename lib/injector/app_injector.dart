import 'package:get_it/get_it.dart';

class AppInjector<T extends Object> {
  static final GetIt _getIt = GetIt.instance;

  static void register<T extends Object>(T instance) {
    _getIt.registerLazySingleton<T>(
      () => instance,
    );
  }

  static T retrieve<T extends Object>() {
    return _getIt.get<T>();
  }

  static void remove<T extends Object>(T instance) {
    _getIt.unregister<T>(instance: instance);
  }

  static void registerBinds() {
    //Registre suas binds aqui!
  }
}
