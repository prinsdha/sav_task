import 'package:sav_task/core/const/app_asset.dart';

class DummyData {
  final String image;
  String? des;
  final String title;

  DummyData({required this.title, required this.image, this.des});
}

List<DummyData> gettingStartedList = [
  DummyData(
      image: AppAsset.notepad1,
      des: "see how\nit works",
      title: "Beginners\nGuide"),
  DummyData(
      image: AppAsset.notepad2,
      des: "Win exciting\ncashback",
      title: "Complete your\nProfile"),
];

List<String> popularSavCategory = [
  "Bucket List goals",
  "The inevitables",
  "Small luxuries of Life"
];

List<DummyData> popularSav = [
  DummyData(image: AppAsset.travel, title: "Travel"),
  DummyData(image: AppAsset.gadget, title: "Gadgets"),
  DummyData(image: AppAsset.home, des: "see how it works", title: "New Home"),
  DummyData(image: AppAsset.newRoom, title: "New Rooms"),
];
