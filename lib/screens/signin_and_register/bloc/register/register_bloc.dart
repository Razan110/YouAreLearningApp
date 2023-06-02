import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_events.dart';
import 'package:learnthings/screens/signin_and_register/bloc/register/register_states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  RegisterBloc() : super(const RegisterStates()) {
    on<Emailevents>(_emailEvent);
    on<PasswordEvents>(_passwordEvent);
  }

//Handlers
  void _emailEvent(Emailevents event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvents event, Emitter<RegisterStates> emit) {
    emit(state.copyWith(password: event.password));
  }
}
