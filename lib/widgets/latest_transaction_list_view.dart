import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/last_transaction_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/user_info_card.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    InfoCardModel(
        image: AssetsImage.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    InfoCardModel(
        image: AssetsImage.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    InfoCardModel(
        image: AssetsImage.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail')
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(child: UserInfoCard(infoCardModel: e)))
            .toList(),
      ),
    );
  }
}
