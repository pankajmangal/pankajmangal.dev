import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:pankaj_portfolio/sections/contact/data/datasource/contact_remote_datasource.dart';
import 'package:pankaj_portfolio/sections/contact/data/repository_impl/contact_repository_impl.dart';
import 'package:pankaj_portfolio/sections/contact/domain/repository/contact_repository.dart';
import 'package:pankaj_portfolio/sections/contact/domain/usecase/submit_contact_usecase.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {

  //Firestore client....
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);

  //DataSource....
  sl.registerLazySingleton<ContactRemoteDataSource>(
        () => ContactRemoteDataSourceImpl(sl()),
  );

  //Repository....
  sl.registerLazySingleton<ContactRepository>(
        () => ContactRepositoryImpl(sl()),
  );

  //UseCase....
  sl.registerLazySingleton<SubmitContactUseCase>(() => SubmitContactUseCase(sl()));

  //Bloc....
  sl.registerFactory<ContactBloc>(() => ContactBloc(sl()));
}