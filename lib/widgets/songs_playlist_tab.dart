import 'package:flutter/material.dart';
import 'package:flutter_mihir/common/app_colors.dart';
import 'package:flutter_mihir/common/app_text_syles.dart';

class SongsPlayListTabTile extends StatelessWidget {
  const SongsPlayListTabTile({
    super.key,
    required this.name, required this.isSelected,
  });
  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isSelected? const BoxDecoration(border:Border(bottom:BorderSide(
        width: 1, color: AppColors.borderColor,
      ))):null,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Text(
        name,
        style: AppTextStyles.heading3.copyWith(color: Colors.white),
      ),
    );
  }
}
