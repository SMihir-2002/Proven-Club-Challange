import 'package:flutter/material.dart';
import 'package:flutter_mihir/common/app_text_syles.dart';
import 'package:flutter_mihir/screens/home_screen/home_screen_controller.dart';
import 'package:flutter_mihir/screens/player_screen/player_screen.dart';
import 'package:get/get.dart';

class DisplaySongs extends StatelessWidget {
  DisplaySongs({super.key, required this.songsData});
  final List songsData;
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: 240,
      width: Get.width * 0.9,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
            songsData.length,
            (index) => GestureDetector(
                  onTap: () {
                    Get.to(const PlayerScreen());
                    if (!homeScreenController.recentSongs
                        .contains(songsData[index])) {
                      homeScreenController.recentSongs.add(songsData[index]);
                      
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network("https://picsum.photos/200")),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          songsData[index]["name"],
                          style: AppTextStyles.heading4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
