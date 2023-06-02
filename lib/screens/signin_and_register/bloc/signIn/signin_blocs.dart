import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/signin_and_register/bloc/signIn/siginin_events.dart';
import 'package:learnthings/screens/signin_and_register/bloc/signIn/signin_states.dart';

class SignInBloc extends Bloc<SignInEvents, SignInStates> {
  SignInBloc() : super(const SignInStates()) {
    on<Emailevents>(_emailEvent);
    on<PasswordEvents>(_passwordEvent);
  }

//Handlers
  void _emailEvent(Emailevents event, Emitter<SignInStates> emit) {
    // print('my email is ${event.email}');
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvents event, Emitter<SignInStates> emit) {
    // print('password is ${event.password}');
    emit(state.copyWith(password: event.password));
  }
}
