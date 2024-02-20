import 'package:flutter/material.dart';
import 'package:flutter_mihir/common/app_text_syles.dart';
import 'package:get/get.dart';

class RecentSongs extends StatelessWidget {
  const RecentSongs({super.key, required this.data});
  final List data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent",
          style: AppTextStyles.heading4.copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 300,
          width: Get.width * 0.9,
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
            
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://picsum.photos/50",
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data[index]["name"],
                        style: AppTextStyles.heading3
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        'Sub-title',
                        style: AppTextStyles.heading2
                            .copyWith(color: Colors.white.withOpacity(0.6)),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
