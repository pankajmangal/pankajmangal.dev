import '../data/model/project_model.dart';

final List<ProjectModel> projects = [

  ProjectModel(
    title: 'Taxiapp UK',
    description:
    'Real-time cab booking with maps, payment and live tracking.',
    image: 'https://images.unsplash.com/photo-1558981403-c5f9899a28bc',
    tech: ['Flutter', 'Google Maps', 'WebSocket', 'Firebase', 'Stripe'],
    playUrl: 'https://play.google.com/store/apps/details?id=taxiappuk.passenger',
    appStoreUrl:
    'https://apps.apple.com/gb/app/taxiapp-uk-london-black-cab/id1639547043',
  ),

  ProjectModel(
    title: 'Kidcaboo',
    description:
    'Child transportation app with location tracking & ride management.',
    image: 'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9',
    tech: ['Flutter', 'Maps', 'WebSocket', 'Stripe'],
    playUrl:
    'https://play.google.com/store/apps/details?id=com.kidcaboo.parent',
    appStoreUrl:
    'https://apps.apple.com/in/app/kidcaboo/id1580743034',
  ),

  ProjectModel(
    title: 'Amala Earth',
    description: 'Eco-friendly ecommerce shopping app.',
    image: 'https://images.unsplash.com/photo-1556742049-0cfed4f6a45d',
    tech: ['Flutter', 'Firebase', 'Payment'],
    playUrl:
    'https://play.google.com/store/search?q=amala+earth&c=apps',
    appStoreUrl:
    'https://apps.apple.com/in/app/amala-earth-online-shopping/id1591399697',
  ),

];