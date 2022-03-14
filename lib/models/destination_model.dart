import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/majalengka.jpg',
    name: 'Majalengka',
    type: 'Sightseeing Tour',
    startTimes: ['8:00 am', '15:00 pm'],
    rating: 5,
    price: 150,
  ),
  Activity(
    imageUrl: 'assets/images/malang.jpg',
    name: 'Bromo',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/bandung.jpg',
    name: 'Pengalengan, Bandung',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 240,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/bali.jpg',
    city: 'Bali',
    country: 'Indonesia',
    description: 'Visit Bali for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bandung.jpg',
    city: 'Bandung',
    country: 'Indonesia',
    description: 'Visit Bandung for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/cirebon.jpg',
    city: 'Cirebon',
    country: 'Indonesia',
    description: 'Visit Cirebon for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/dieng.jpg',
    city: 'Dieng',
    country: 'Indonesia',
    description: 'Visit Dieng for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/jakarta.jpg',
    city: 'Jakarta',
    country: 'Indonesia',
    description: 'Visit Jakarta for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
