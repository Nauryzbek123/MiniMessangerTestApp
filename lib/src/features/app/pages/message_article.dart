import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/resources/gilroy_text.dart';
import '../../../core/widgets/circle_avatar.dart';
import '../../../core/widgets/column_spacer.dart';
import '../widgets/search_widget.dart';

class MessageArticle extends StatelessWidget {
  const MessageArticle({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnSpacer(7),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: GestureDetector(
                      onTap: () => context.router.pop(),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatarWithText('ВВ'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GillroyText('Виктор Власов', 15, AppColors.blackColor,
                            FontWeight.w600),
                        Row(
                          children: [
                            GillroyText('В сети', 12, AppColors.darkGreyColor,
                                FontWeight.w500),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ColumnSpacer(1),
              Divider(
                color: AppColors.dividerColor,
                thickness: 2.0,
              ),
            ],
          ),
        ),
      ),
      body: Text('data'),
    );
  }
}
