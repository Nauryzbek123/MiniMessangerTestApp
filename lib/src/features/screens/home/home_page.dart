import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messanger_app/src/core/resources/app_colors.dart';
import 'package:messanger_app/src/core/resources/gilroy_text.dart';
import 'package:messanger_app/src/core/widgets/column_spacer.dart';
import 'package:messanger_app/src/features/app/router/router.gr.dart';

import '../../../core/widgets/circle_avatar.dart';
import '../../app/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(169),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnSpacer(7),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: GillroyText(
                    'Чаты', 32, AppColors.blackColor, FontWeight.w700),
              ),
              ColumnSpacer(2),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: SearchWidget(),
              ),
              ColumnSpacer(2.5),
              Divider(
                color: AppColors.dividerColor,
                thickness: 2.0,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => AutoRouter.of(context).push(MessageArticle()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatarWithText('ВВ'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 110),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GillroyText('Виктор Власов', 15, AppColors.blackColor,
                            FontWeight.w600),
                        Row(
                          children: [
                            GillroyText(
                                'Вы:', 12, AppColors.blackColor, FontWeight.w500),
                            GillroyText('Уже сделал?', 12,
                                AppColors.darkGreyColor, FontWeight.w500),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, right: 30),
                    child: GillroyText(
                        'Вчера', 12, AppColors.darkGreyColor, FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
