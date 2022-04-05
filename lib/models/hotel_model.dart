class HotelModel {
  String id;
  String name;
  int price;
  String imgUrl;
  double rating;
  String address;

  HotelModel(
      {this.id = '',
      this.name = '',
      this.imgUrl = '',
      this.price = 0,
      this.rating = 0.0,
      this.address = ''});

  static List<HotelModel> mockHotel() {
    return [
      HotelModel(
          name: 'Bimosaurus Hotel',
          address: 'Safari, Buitenzorg',
          rating: 5.0,
          price: 850000,
          imgUrl: 'assets/images/img1.png'),
      HotelModel(
          name: 'Andjoy Hotel',
          address: 'Kebon Jaty, Bandung',
          rating: 5.0,
          price: 700000,
          imgUrl: 'assets/images/img4.png'),
      HotelModel(
          name: 'Skytown Hotel',
          address: 'Sibolga, Medan',
          rating: 5.0,
          price: 1200000,
          imgUrl: 'assets/images/img3.png'),
    ];
  }
}
