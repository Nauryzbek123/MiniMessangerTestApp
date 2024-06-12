import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messanger_app/src/core/resources/app_colors.dart';
import 'package:messanger_app/src/core/widgets/row_spacer.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 42,
      decoration: BoxDecoration(
          color: Color(0xFFEDF2F6), borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          RowSpacer(1),
          Icon(
            Icons.search,
            color: AppColors.whiteGreyColor,
            size: 20,
          ),
          RowSpacer(1),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Поиск',
                border: InputBorder.none,
                hintStyle: GoogleFonts.poppins(
                color: AppColors.whiteGreyColor,
                fontWeight: FontWeight.w500, 
                fontSize: 16
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
