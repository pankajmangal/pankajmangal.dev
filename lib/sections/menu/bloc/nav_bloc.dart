import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/menu/bloc/nav_event.dart';
import 'package:pankaj_portfolio/sections/menu/bloc/nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(NavState(Strings.home)) {
    on<SetActiveSection>((event, emit) {
      emit(NavState(event.section));
    });
  }
}