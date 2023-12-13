import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/logic/identity_logging_mixin.dart';
import 'package:my_project/src/core/utils/error_util.dart';

extension on StringBuffer {
  /// Writes the type of the object in debug mode to make logs **readable** and
  /// write the object's [toString] in release mode to make logs
  /// **informative**.
  void writeInfo(Object? object) {
    Type? type;

    // ignore: prefer_asserts_with_message
    assert(
      () {
        type = object.runtimeType;

        return true;
      }(),
    );

    write(type ?? object);
  }
}

class AppBlocObserver extends BlocObserver with IdentityLoggingMixin {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    logData(
      (buffer) => buffer
        ..write('Created ')
        ..writeInfo(bloc),
    );
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    if (event != null) {
      logData(
        (buffer) => buffer
          ..write('Event ')
          ..writeInfo(event)
          ..write(' in ')
          ..writeInfo(bloc),
      );
    }
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);

    final Object? event = transition.event;

    if (event != null) {
      logData(
        (buffer) => buffer
          ..write('Transition in ')
          ..writeInfo(bloc)
          ..write(' with ')
          ..writeInfo(event)
          ..write(': ')
          ..writeInfo(transition.currentState)
          ..write(' -> ')
          ..writeInfo(transition.nextState),
      );
    }
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    logData(
      (buffer) => buffer
        ..write('Error ')
        ..writeInfo(error)
        ..write(' in ')
        ..writeInfo(bloc),
    );

    ErrorUtil.logError(
      error,
      stackTrace: stackTrace,
      hint: bloc.runtimeType.toString(),
    );
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    logData(
      (buffer) => buffer
        ..write('Closed ')
        ..writeInfo(bloc),
    );
  }
}
