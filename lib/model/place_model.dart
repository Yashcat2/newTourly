class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;
  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
  });
}

List places = [
  PlaceInfo(
      image: "assests/images/forests.jpeg",
      location: 'Matale',
      name: 'Matale',
      distance: 5000,
      days: 12,
      desc:
          " This  590 foot high fort spred across 692 acresis the largest fort in india and a world heriatage site. ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////"),
  PlaceInfo(
      image: "assests/images/forests.jpeg",
      location: 'Badulla',
      name: 'Badulla',
      distance: 5000,
      days: 12,
      desc:
          "This  590 foot high fort spred across 692 acresis the largest fort in india and a world heriatage site"),
  PlaceInfo(
      image: "assests/images/forests.jpeg",
      location: 'Galle',
      name: 'Galle',
      distance: 5000,
      days: 12,
      desc:
          "This  590 foot high fort spred across 692 acresis the largest fort in india and a world heriatage site"),
  PlaceInfo(
      image: "assests/images/forests.jpeg",
      location: 'Matara',
      name: 'Galle',
      distance: 5000,
      days: 12,
      desc:
          "This  590 foot high fort spred across 692 acresis the largest fort in india and a world heriatage site"),
  PlaceInfo(
      image: "assests/images/forests.jpeg",
      location: 'Galle',
      name: 'Galle',
      distance: 5000,
      days: 12,
      desc:
          "This  590 foot high fort spred across 692 acresis the largest fort in india and a world heriatage site"),
];
