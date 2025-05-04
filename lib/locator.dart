import 'package:chatui/features/chat/data/datasource/chat_datasource.dart';
import 'package:chatui/features/chat/data/repositories/chat_repository.dart';
import 'package:chatui/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:get_it/get_it.dart';

import 'config.dart';
import 'utils/router/app_router.dart';
import 'utils/router/app_router_observer.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(() => AppRouterObserver());
  locator.registerLazySingleton(() => ChatDatasource());
  locator.registerLazySingleton(
    () => ChatRepository(
      config: locator<Config>(),
      datasource: locator<ChatDatasource>(),
    ),
  );
  locator.registerLazySingleton(
    () => ChatBloc(
      chatRepository: locator<ChatRepository>(),
      config: locator<Config>(),
    ),
  );
}
