import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_project/src/feature/profile/enum/app_language.dart';
import 'package:my_project/src/feature/profile/repository/settings_repository.dart';
import 'package:stream_bloc/stream_bloc.dart';
import 'package:sum/sum.dart';

part 'settings_bloc.freezed.dart';

// --- States --- //

@freezed
class SettingsData with _$SettingsData {
  const factory SettingsData({
    required AppLanguage locale,
  }) = _SettingsData;
}

typedef SettingsState = PersistentAsyncData<String, SettingsData>;

// --- Events --- //

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setLocale({
    required AppLanguage locale,
  }) = _SettingsEventSetLocale;
}

// --- BLoC --- //

class SettingsBloc extends StreamBloc<SettingsEvent, SettingsState> {
  final ISettingsRepository _settingsRepository;

  SettingsBloc({
    required ISettingsRepository settingsRepository,
  })  : _settingsRepository = settingsRepository,
        super(_initialState(settingsRepository));

  static SettingsState _initialState(ISettingsRepository repository) =>
      SettingsState.idle(
        data: SettingsData(locale: repository.locale),
      );

  Stream<SettingsState> _performMutation(
    Future<SettingsData> Function() body,
  ) async* {
    yield state.toLoading();
    try {
      final newData = await body();
      yield SettingsState.idle(data: newData);
    } on Object catch (e) {
      yield state.toError(error: e.toString());
      rethrow;
    } finally {
      yield state.toIdle();
    }
  }

  Stream<SettingsState> _setLocale(AppLanguage locale) =>
      _performMutation(() async {
        await _settingsRepository.setLocale(locale);

        return state.data.copyWith(locale: locale);
      });

  @override
  Stream<SettingsState> mapEventToStates(SettingsEvent event) => event.when(
        setLocale: _setLocale,
      );
}
