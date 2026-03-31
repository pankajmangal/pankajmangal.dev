import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pankaj_portfolio/sections/projects/data/model/project_model.dart';

abstract class ProjectRemoteDatasource {
  Future<void> pushProjects(List<ProjectModel> projects);
  Future<List<ProjectModel>> fetchProjects();
}

class ProjectRemoteDatasourceImpl implements ProjectRemoteDatasource {
  final FirebaseFirestore firestore;

  ProjectRemoteDatasourceImpl(this.firestore);

  @override
  Future<void> pushProjects(List<ProjectModel> projects) async {
    try {
      for (var project in projects) {
        await firestore
            .collection('projects')
            .doc(project.title)
            .set(project.toJson());
      }
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        throw Exception('Permission denied. Check Firestore rules.');
      } else if (e.code == 'unavailable') {
        throw Exception('No internet connection.');
      } else {
        throw Exception(e.message ?? 'Firestore error');
      }
    }
  }

  @override
  Future<List<ProjectModel>> fetchProjects() async{
    try {
      final snapshot = await firestore
          .collection('projects')
          .orderBy('order')
          .get();

      return snapshot.docs
          .map((doc) => ProjectModel.fromJson(doc.data()))
          .toList();
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        throw Exception('Permission denied. Check Firestore rules.');
      } else if (e.code == 'unavailable') {
        throw Exception('No internet connection.');
      } else {
        throw Exception(e.message ?? 'Firestore error');
      }
    }
  }
}