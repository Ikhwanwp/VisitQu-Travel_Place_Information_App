part of 'models.dart';

class RecomendedModel {
  String name;
  String country;
  String image;
  String icon;

  RecomendedModel(this.name, this.country, this.image, this.icon);
}

List<RecomendedModel> recomended = recomendedData
    .map((item) => RecomendedModel(
        item['name'], item['country'], item['image'], item['icon']))
    .toList();

List recomendedData = [
  {
    "name": "Kawah Ijen",
    "country": "Jawa Timur",
    "image": "images/kawah_ijen.png",
    "icon": "images/location.png"
  },
  {
    "name": "Labuhan Bajo",
    "country": "Nusa Tenggara Timur",
    "image": "images/labuhan_bajo.png",
    "icon": "images/location.png"
  },
  {
    "name": "Candi Borobudur",
    "country": "Jawa Tengah",
    "image": "images/borobudur.jpg",
    "icon": "images/location.png"
  },
];
