import 'package:flutter/material.dart';
import 'package:folio/animations/bottom_animation.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/contact_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/footer_card.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / ContactUtils.contactIcon.length;

    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGet in Touch",
          ),
          const CustomSectionSubHeading(
            text: "Let's build something together :)\n\n",
          ),
          Space.y!,
          SizedBox(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0;
                    index < ContactUtils.contactIcon.length;
                    index++)
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 8.0),
                      child: FooterCard(
                        projectIconData: ContactUtils.contactIcon[index],
                        projectTitle: ContactUtils.titles[index],
                        projectDescription: ContactUtils.details[index],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
