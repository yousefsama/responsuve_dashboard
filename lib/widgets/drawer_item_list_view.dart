import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawers = [
    const DrawerItemModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    const DrawerItemModel(
      image: Assets.imagesMytransaction,
      title: 'Transaction',
    ),
    const DrawerItemModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    const DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    const DrawerItemModel(
      image: Assets.imagesMyinvestment,
      title: 'My Investment',
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: drawers.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                drawerItemModel: drawers[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
