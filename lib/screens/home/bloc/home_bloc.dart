import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<HomeInitialized>(_homeInitialized);
  }
}

Future<void> _homeInitialized(
  HomeInitialized event,
  Emitter<HomeState> emit,
) async {
  emit(HomePageOpened());
}
