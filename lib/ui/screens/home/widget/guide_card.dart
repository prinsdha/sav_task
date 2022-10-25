import 'package:flutter/material.dart';
import 'package:sav_task/core/const/app_color.dart';
import 'package:sav_task/core/data/dummy_data.dart';

class GuideCard extends StatelessWidget {
  final DummyData data;

  const GuideCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14.0)),
        padding: const EdgeInsets.all(15.0),
        // width: MediaQuery.of(context).size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.title,
              style: const TextStyle(
                  color: AppColor.primaryTextColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.des ?? "",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.50),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  data.image,
                  height: 85,
                )
              ],
            ),
          ],
        ));
  }
}
