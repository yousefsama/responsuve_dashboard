import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class DrawerItem extends StatefulWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return widget.isActive
        ? ActiveDrawerItem(drawerItemModel: widget.drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: widget.drawerItemModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleSemiBold16,
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
        color: Colors.red,
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleSemiBold16.copyWith(color: Colors.red),
        ),
      ),
      trailing: Container(
        color: Colors.red,
        width: 3.5,
      ),
    );
  }
}
