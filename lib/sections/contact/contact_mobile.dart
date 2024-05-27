import 'package:flutter/material.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/utils/contact_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

import '../../widget/footer_card.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nGet in Touch",
        ),
        const CustomSectionSubHeading(
          text: "Let's build something together :)\n\n",
        ),
        SizedBox(
          height: 200,
          child: Row(
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
                      projectLink: ContactUtils.links[index],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
