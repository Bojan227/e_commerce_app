import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:logger/logger.dart';

class GlobalBlocObserver extends BlocObserver {
  final Logger logger;

  GlobalBlocObserver({required this.logger});

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.t('${bloc.runtimeType} $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.t('${bloc.runtimeType} $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.t('${bloc.runtimeType} $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.t('${bloc.runtimeType} $error $stackTrace');
  }
}
