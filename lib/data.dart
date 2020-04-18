class Dvd {
  String title,
      writer,
      price,
      image,
      description =
          'HAVE A NICE PLAY  :)';
  int pages;
  double rating;

  Dvd(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

final List<Dvd> dvds = [
  Dvd('BATTEL FIELD V', 'Kaset CD Original',
      'Rp 500.000', 'images/1.jpg', 3.5, 123),
  Dvd('GOD OF WAR', 'Kaset CD Original',
      'Rp 650.000', 'images/2.jpg', 5.0, 324),
  Dvd('PUBG', 'Kaset CD Original',
      'Rp 700.000', 'images/3.jpg', 4.5, 240),
  Dvd('CTR', 'Kaset CD Original',
      'Rp 500.000', 'images/4.jpg', 4.8, 432),
  Dvd('MINE CRAFT', 'Kaset CD Original',
      'Rp 550.000', 'images/5.jpg', 4.5, 321),
  Dvd('FIFA 2019', 'Kaset CD Original',
      'Rp 800.000', 'images/6.jpg', 3.5, 431),
];