import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesMyCardBackground),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 24, left: 24, right: 24),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20.copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(
                Assets.imagesImage,
              ),
            ),
            const Spacer(),
            Text(
              '0918 8124 0042 8129',
              style: AppStyles.styleSemiBold20.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '12/20',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
                const SizedBox(width: 6),
                Text(
                  '-',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
                const SizedBox(width: 6),
                Text(
                  '124',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
