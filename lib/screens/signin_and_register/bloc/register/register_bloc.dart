import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_events.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  RegisterBloc() : super(const RegisterStates()) {
    on<UserNamevents>(_userNameEvent);
    on<Emailevents>(_emailEvent);
    on<PasswordEvents>(_passwordEvent);
    on<RePasswordEvents>(_rePasswordEvent);
  }

//Handlers
  void _userNameEvent(UserNamevents event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(userName: event.userName));
  }

  void _emailEvent(Emailevents event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvents event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _rePasswordEvent(RePasswordEvents event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(rePassword: event.rePassword));
  }
}
