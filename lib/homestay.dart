class Homestay {
  int servings;
  String Detail;
  String label;
  String imageUrl;
  String location;
  int price;
  double rating;
  Homestay(this.label, this.imageUrl, this.location, this.price, this.servings,
      this.Detail, this.rating);

  static List<Homestay> samples = [
    Homestay(
        'Gurney Treasure - The Vintage Villa by Little Cabin',
        'assets/homestay1.jpg',
        'Ipoh,Perak',
        150,
        4,
        'Located in George Town, less than 1 km from Northam Beach, Gurney Treasure - The Vintage Villa by Little Cabin features express check-in and check-out and free WiFi throughout the property. Featuring a shared kitchen, this property also provides guests with a terrace. Free private parking is available and the guest house also provides bike hire for guests who want to explore the surrounding area. All units are equipped with air conditioning, a flat-screen TV with satellite channels, a microwave, a kettle, a bidet, a hairdryer and a desk. All guest rooms include a private bathroom, free toiletries and bed linen.Rainbow Skywalk at Komtar is 4 km from the guest house, while Penang Times Square is 4.2 km away. The nearest airport is Penang International, 21 km from Gurney Treasure - The Vintage Villa by Little Cabin, and the property offers a paid airport shuttle service.',
        5.0),
    Homestay(
        'Petak Padin Cottage by The Pool',
        'assets/homestay2.jpg',
        'Rawang,Selangor',
        230,
        2,
        'Situated in Kepala Batas, 22 km from Sunway Carnival Mall and 31 km from Penang Bridge, Petak Padin Cottage by The Pool features accommodation with air conditioning and access to a garden with an outdoor swimming pool. Some units have a balcony and/or a terrace. Queensbay Mall is 38 km from the homestay, while 1st Avenue Penang is 41 km from the property. The nearest airport is Penang International Airport, 44 km from Petak Padin Cottage by The Pool.',
        4.5),
    Homestay(
        'Stay SongSong Beach Street',
        'assets/homestay3.jpg',
        'Johor Bharu,Johor',
        110,
        1,
        'Within 2.5 km of Northam Beach and 500 m of Wonderfood Museum, Stay SongSong Beach Street provides free WiFi and a bar. This property offers access to a balcony. The air-conditioned homestay consists of 3 bedrooms, a kitchen with dining area, and 2 bathrooms with shower. Popular points of interest near the homestay include 1st Avenue Penang, Rainbow Skywalk at Komtar and Penang Times Square. The nearest airport is Penang International Airport, 17 km from Stay SongSong Beach Street.',
        4.0),
  ];
}

class Details {
  String info;
  Details(this.info);
}
