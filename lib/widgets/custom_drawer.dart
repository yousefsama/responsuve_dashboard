import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/models/last_transaction_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/drawer_item.dart';
import 'package:responsivedashboard/widgets/drawer_item_list_view.dart';

import 'package:responsivedashboard/widgets/user_info_card.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: const Padding(
        padding: EdgeInsets.all(28.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: UserInfoCard(
              infoCardModel: InfoCardModel(
                  image: Assets.imagesAvatar1,
                  title: "yousef sama",
                  subTitle: 'ys2152000@gmail.com'),
            )),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            SliverToBoxAdapter(child: DrawerItemListView()),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          image: Assets.imagesSettings, title: "Settings")),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          image: Assets.imagesLogout, title: "Log Out")),
                  SizedBox(
                    height: 24,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
