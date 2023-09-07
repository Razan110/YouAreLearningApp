import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/application/profile/settings/bloc/setting_events.dart';
import 'package:learnthings/screens/application/profile/settings/bloc/setting_states.dart';

class SettingsBloc extends Bloc<SettingsEvents, SettingsStates> {
  SettingsBloc() : super(SettingsStates()) {
    on<TriggerSettings>(_triggerSettings);
  }
  _triggerSettings(SettingsEvents event, Emitter<SettingsStates> emit) {
    emit(SettingsStates());
  }
}
