import 'package:sutraq/const/app_strings.dart';

class SlideModel {
  final String image;
  final String title;
  final String desc;

  SlideModel({required this.image, required this.title, required this.desc});
}

final slideList = [
  SlideModel(
      image: AppStrings.walkThrough1,
      title: "Send Money Anywhere",
      desc:
          "With our unique technology, you can get money anywhere in the world."),
  SlideModel(
      image: AppStrings.walkThrough2,
      title: "Safe & Secured",
      desc: "Safety of your funds is guaranteed. We’ve got you covered 24/7."),
  SlideModel(
      image: AppStrings.walkThrough3,
      title: "Unbeatable Support",
      desc:
          "Send money to other sutraq users free of charge, with no additional fee."),
];
