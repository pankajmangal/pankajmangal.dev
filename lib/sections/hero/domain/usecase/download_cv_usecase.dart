import 'package:pankaj_portfolio/sections/hero/domain/repository/cv_repository.dart';

class DownloadCVUseCase {
  final CvRepository repository;

  DownloadCVUseCase(this.repository);

  Future<void> call() {
    return repository.downloadCV();
  }
}