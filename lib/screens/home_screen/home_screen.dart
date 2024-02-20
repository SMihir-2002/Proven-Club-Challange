import 'package:flutter/material.dart';
import 'package:flutter_mihir/data/songs_data.dart';
import 'package:flutter_mihir/screens/home_screen/home_screen_controller.dart';
import 'package:flutter_mihir/widgets/display_songs.dart';
import 'package:flutter_mihir/widgets/home_app_bar.dart';
import 'package:flutter_mihir/widgets/home_search_bar.dart';
import 'package:flutter_mihir/widgets/recent_songs.dart';
import 'package:flutter_mihir/widgets/songs_playlist_tab.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 11, 61),
      appBar: homeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeSearchBar(),
            SizedBox(
              width: Get.width * 0.9,
              height: 40,
              child: Obx(
               ()=> ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      SongsData.playList.length,
                      (index) => GestureDetector(
                            onTap: () {
                              homeScreenController.tab.value = index;
                            },
                            child: SongsPlayListTabTile(name: SongsData.playList[index]["name"], isSelected: homeScreenController.tab.value == index,),
                          )),
                ),
              ),
            ),
            Obx(()=>DisplaySongs(songsData:SongsData.playList[homeScreenController.tab.value]["data"] ,)),
        
            Obx(()=> RecentSongs(data:homeScreenController.recentSongs.value))
        
          ],
        ),
      ),
    );
  }
}
