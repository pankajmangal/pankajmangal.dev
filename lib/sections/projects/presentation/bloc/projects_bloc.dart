import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/sections/projects/domain/usecase/fetch_projects_usecase.dart';
import 'package:pankaj_portfolio/sections/projects/domain/usecase/push_projects_usecase.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_event.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  final PushProjectsUseCase useCase;
  final FetchProjectsUseCase fetchUseCase;

  ProjectsBloc(this.useCase, this.fetchUseCase) : super(ProjectsInitial()) {
    on<PushProjectsEvent>(_push);
    on<FetchProjectsEvent>(_fetchProjects);
  }

  Future<void> _push(
      PushProjectsEvent event, Emitter<ProjectsState> emit) async {
    emit(ProjectsLoading());

    try {
      await useCase(event.projects);
      emit(ProjectsSuccess());
    } catch (e) {
      emit(ProjectsError(e.toString()));
    }
  }

  Future<void> _fetchProjects(
      FetchProjectsEvent event, Emitter<ProjectsState> emit) async {
    emit(ProjectsLoading());

    try {
      final projects = await fetchUseCase();
      emit(ProjectsFetchLoaded(projects));
    } catch (e) {
      emit(ProjectsError(e.toString()));
    }
  }
}