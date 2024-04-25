import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/costom_container.dart';
import 'package:responsivedashboard/widgets/name_card.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "My card",
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(height: 20),
        ExpandablePageView(
            children: List.generate(3, (index) => const NameCard()))
      ],
    ));
  }
}
