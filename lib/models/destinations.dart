import 'activities.dart';

class Destination {
  String city;
  String country;
  List<Activities> activities;
  String description;
  String imgUrl;
  String countryImgUrl;

  Destination(
      {required this.city,
      required this.country,
      required this.activities,
      required this.description,
      required this.imgUrl,
      required this.countryImgUrl});
}

List<Activities> activities = [
  Activities(
      activityPlace: "St.Marks Basilica",
      price: "\$30",
      type: "Sightseeing",
      rating: 5,
      startTimes: ["9:00 am", "11:00am"]),
  Activities(
      activityPlace: "St.Marks Basilica",
      price: "\$30",
      type: "Sightseeing",
      rating: 3,
      startTimes: ["9:00 am", "11:00am"]),
  Activities(
      activityPlace: "St.Marks Basilica",
      price: "\$30",
      type: "Sightseeing",
      rating: 4,
      startTimes: ["9:00 am", "11:00am"]),
  Activities(
      activityPlace: "St.Marks Basilica",
      price: "\$30",
      type: "Sightseeing",
      rating: 2,
      startTimes: ["9:00 am", "11:00am"]),
];

List<Destination> destinations = [
  Destination(
      city: "Paris",
      country: "France",
      activities: activities,
      description: "Lorem Ipsum dolo set amet Lorem Ipsum dolo set amet Lorem",
      imgUrl: "assets/images/paris.jpg",
      countryImgUrl: "assets/images/france.jpg"),
  Destination(
      city: "New York",
      country: "America",
      activities: activities,
      description: "Lorem Ipsum dolo set amet Lorem Ipsum dolo set amet Lorem",
      imgUrl: "assets/images/usa_statue_of_liberty.jpg",
      countryImgUrl: "assets/images/france.jpg"),
  Destination(
      city: "Paris",
      country: "Egypt",
      activities: activities,
      description: "Lorem Ipsum dolo set amet Lorem Ipsum dolo set amet Lorem",
      imgUrl: "assets/images/pyramids.jpg",
      countryImgUrl: "assets/images/france.jpg"),
  Destination(
      city: "Paris",
      country: "Madagascar",
      activities: activities,
      description: "Lorem Ipsum dolo set amet Lorem Ipsum dolo set amet Lorem",
      imgUrl: "assets/images/stone_blades_madagascar.jpg",
      countryImgUrl: "assets/images/france.jpg"),
  Destination(
      city: "Paris",
      country: "South Africa",
      activities: activities,
      description: "Lorem Ipsum dolo set amet Lorem Ipsum dolo set amet Lorem",
      imgUrl: "assets/images/SA_KrugerNationalPark.jpg",
      countryImgUrl: "assets/images/southafrica.jpg",)
];
