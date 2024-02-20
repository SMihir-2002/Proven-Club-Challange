import 'package:flutter/material.dart';
import 'package:flutter_mihir/common/app_colors.dart';
import 'package:flutter_mihir/common/app_text_syles.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.darkGrey,
      ),
      child: TextField(
        style: AppTextStyles.heading2.copyWith(color: Colors.white),
        decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            prefixIcon: const Icon(
              Icons.search,
              size: 16,
              color: AppColors.lightGrey,
            ),
            hintText: "Search song, playslist, artist...",
            hintStyle:
                AppTextStyles.heading2.copyWith(color: AppColors.lightGrey)),
      ),
    );
  }
}
