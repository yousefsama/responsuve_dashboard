import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/last_transaction_model.dart';
import 'package:responsivedashboard/widgets/user_info_list_tile.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    super.key,
    required this.infoCardModel,
  });
  final InfoCardModel infoCardModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      elevation: 0,
      child: UserInfoListTile(
        image: infoCardModel.image,
        title: infoCardModel.title,
        subtitle: infoCardModel.subTitle,
      ),
    );
  }
}
