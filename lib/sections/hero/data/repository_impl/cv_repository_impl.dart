import 'package:pankaj_portfolio/sections/hero/domain/repository/cv_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class CvRepositoryImpl implements CvRepository {
  @override
  Future<void> downloadCV() async {
    final uri = Uri.parse(
      'https://raw.githubusercontent.com/pankajmangal/portfolio-assets/main/Pankaj_Lead_CV.pdf',
    );

    await launchUrl(
      uri,
      webOnlyWindowName: '_blank',
    );
  }
}