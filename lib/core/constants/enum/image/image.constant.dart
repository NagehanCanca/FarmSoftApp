class ImageConstants {
  ImageConstants._init();
  static ImageConstants? _instance;

  static ImageConstants get instance => _instance ??= ImageConstants._init();

  String get logo => toPng('Loya');

  String toPng(String name) => 'asset/images/$name.png';
}