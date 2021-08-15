part of 'models.dart';

class ProvinceModel {
  String image;
  String country;
  String icon;

  ProvinceModel(this.image, this.country, this.icon);
}

List<ProvinceModel> province = provinceData
    .map((item) => ProvinceModel(item['image'], item['country'], item['icon']))
    .toList();

List provinceData = [
  {
    "image": "images/kawah_ijen.png",
    "country": "Jawa Timur",
    "icon": "images/tempat_wisata.png",
  },
  {
    "image": "images/labuhan_bajo.png",
    "country": "Nusa Tenggara Timur",
    "icon": "images/tempat_wisata.png",
  },
  {
    "image": "images/borobudur.jpg",
    "country": "Jawa Tengah",
    "icon": "images/tempat_wisata.png",
  },
];
