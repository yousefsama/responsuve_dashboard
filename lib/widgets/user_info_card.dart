import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/user_info_list_tile.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: UserInfoListTile(
          image: AssetsImage.imagesAvatar1,
          title: 'Yousef sama',
          subtitle: 'ys2152000@gmail.com'),
    );
  }
}
