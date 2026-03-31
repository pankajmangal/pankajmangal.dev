import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:pankaj_portfolio/sections/contact/data/datasource/contact_remote_datasource.dart';
import 'package:pankaj_portfolio/sections/contact/data/repository_impl/contact_repository_impl.dart';
import 'package:pankaj_portfolio/sections/contact/domain/repository/contact_repository.dart';
import 'package:pankaj_portfolio/sections/contact/domain/usecase/submit_contact_usecase.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_bloc.dart';
import 'package:pankaj_portfolio/sections/projects/data/datasource/project_firestore_datasource.dart';
import 'package:pankaj_portfolio/sections/projects/data/repository/project_repository_impl.dart';
import 'package:pankaj_portfolio/sections/projects/domain/repository/project_repository.dart';
import 'package:pankaj_portfolio/sections/projects/domain/usecase/fetch_projects_usecase.dart';
import 'package:pankaj_portfolio/sections/projects/domain/usecase/push_projects_usecase.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/bloc/projects_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {

  //Firestore client....
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);

  //DataSource....
  sl.registerLazySingleton<ContactRemoteDataSource>(
        () => ContactRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<ProjectRemoteDatasource>(
        () => ProjectRemoteDatasourceImpl(sl()),
  );

  //Repository....
  sl.registerLazySingleton<ContactRepository>(
        () => ContactRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<ProjectRepository>(
        () => ProjectRepositoryImpl(sl()),
  );

  //UseCase....
  sl.registerLazySingleton<SubmitContactUseCase>(() => SubmitContactUseCase(sl()));
  sl.registerLazySingleton<PushProjectsUseCase>(() => PushProjectsUseCase(sl()));
  sl.registerLazySingleton<FetchProjectsUseCase>(() => FetchProjectsUseCase(sl()));

  //Bloc....
  sl.registerFactory<ContactBloc>(() => ContactBloc(sl()));
  sl.registerFactory<ProjectsBloc>(() => ProjectsBloc(sl(), sl()));
}