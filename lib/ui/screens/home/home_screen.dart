import 'package:flutter/material.dart';
import 'package:sav_task/core/const/app_asset.dart';
import 'package:sav_task/core/const/app_color.dart';
import 'package:sav_task/core/const/app_settings.dart';
import 'package:sav_task/core/data/dummy_data.dart';
import 'package:sav_task/ui/screens/home/widget/guide_card.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPopularCategory = 0;

  set selectedPopularCategory(int value) {
    _selectedPopularCategory = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints boxConstraints) {
          return SafeArea(
            child: ListView(
              children: [
                Container(
                  constraints: BoxConstraints(
                    minHeight: boxConstraints.maxHeight,
                  ),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(gradient: AppColor.primaryBgColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage(AppAsset.avatar),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Hello,",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.primaryTextColor,
                                    fontSize: 13),
                              ),
                              Text(
                                "Maria 👋",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.primaryTextColor,
                                    fontSize: 25),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Center(
                        child: Text(
                          "You have AED 5344 available in your accounts",
                          style: TextStyle(
                              color: AppColor.primaryTextColor,
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: const Color(0xff064F8C), width: 2),
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding + 5,
                            vertical: kDefaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Savings",
                              style: TextStyle(
                                  color: AppColor.primaryTextColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Wrap(
                                  spacing: 10,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Text(
                                      "AED",
                                      style: TextStyle(
                                          color: AppColor.primaryTextColor
                                              .withOpacity(0.56),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Text(
                                      "2065",
                                      style: TextStyle(
                                          color: AppColor.primaryTextColor,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  AppAsset.mobileBanking,
                                  height: 50,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "In 3 Goal Accounts",
                                  style: TextStyle(
                                      color: AppColor.primaryTextColor,
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Image.asset(
                                  AppAsset.pieChart,
                                  height: 22,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  AppAsset.clock,
                                  height: 22,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          transactionButton(
                              AppAsset.startSaving, "Start saving"),
                          transactionButton(
                              AppAsset.transaction, "Transaction"),
                          transactionButton(AppAsset.saveRules, "Sav Rules"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        AppAsset.offerPosture,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      headerTitle("Getting Started"),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        child: Row(
                          children: gettingStartedList
                              .asMap()
                              .map((key, value) => MapEntry(
                                  key,
                                  GuideCard(
                                    data: value,
                                  )))
                              .values
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      headerTitle("Popular Sav Jars"),
                      const SizedBox(
                        height: 20,
                      ),
                      buildCategoryButton,
                      const SizedBox(
                        height: 20,
                      ),
                      buildPopularJars,
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  SingleChildScrollView get buildPopularJars {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: popularSav
            .asMap()
            .map((index, value) => MapEntry(
                index,
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(value.image),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        value.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: AppColor.primaryTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )))
            .values
            .toList(),
      ),
    );
  }

  SingleChildScrollView get buildCategoryButton {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      child: Row(
        children: popularSavCategory
            .asMap()
            .map((index, value) => MapEntry(
                index,
                GestureDetector(
                  onTap: () {
                    selectedPopularCategory = index;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: _selectedPopularCategory == index
                            ? AppColor.blueButtonColor
                            : null,
                        borderRadius: BorderRadius.circular(16)),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                        child: Text(
                      value,
                      style: TextStyle(
                          color: _selectedPopularCategory == index
                              ? Colors.white
                              : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                )))
            .values
            .toList(),
      ),
    );
  }

  Widget headerTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: AppColor.primaryTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w500),
    );
  }

  Widget transactionButton(String image, String description) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Image.asset(
            image,
            height: 44,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: AppColor.primaryTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
