import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnthings/screens/application/home/bloc/home_events.dart';
import 'package:learnthings/screens/application/home/bloc/home_states.dart';

class HomeBloc extends Bloc<HomeEvents, HomeStates> {
  HomeBloc() : super(HomeStates()) {
    on<HomeDots>(_homeDots);
  }

  void _homeDots(HomeDots event, Emitter<HomeStates> emit) {
    emit(state.copyWith(index: event.index));
  }
}
