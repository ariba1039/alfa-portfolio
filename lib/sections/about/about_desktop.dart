import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/about_utils.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/utils/work_utils.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/tech_widget.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomSectionHeading(
          text: '\nAbout Me',
        ),
        const CustomSectionSubHeading(
          text: 'Get to know me :)',
        ),
        Space.y1!,
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(left: 60, right: 60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust the radius as needed
                  image: DecorationImage(
                    image: AssetImage(StaticUtils.coloredPhoto),
                    fit: BoxFit.cover,
                  ),
                ),
                height: height * 0.6,
                width: height * 0.1,
              ),
            ),
            Expanded(
              flex: width < 1230 ? 4 : 3,
              child: Container(
                padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who am I?',
                      style: AppText.b1!.copyWith(
                        color: AppTheme.c!.primary,
                      ),
                    ),
                    Space.y1!,
                    Text(
                      AboutUtils.aboutMeHeadline,
                      style: AppText.b1b!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Space.y!,
                    Text(
                      AboutUtils.aboutMeDetail,
                      style: AppText.b2!.copyWith(
                        height: 2,
                        letterSpacing: 1.1,
                        fontFamily: 'Montserrat',
                        fontSize: AppDimensions.normalize(5),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Space.y!,
                    Divider(
                      color: Colors.grey[800],
                      thickness: AppDimensions.normalize(0.5),
                    ),
                    Space.y!,
                    Text(
                      'Languages I have worked with:',
                      style: AppText.l1!.copyWith(
                        color: AppTheme.c!.primary,
                      ),
                    ),
                    Space.y!,
                    Row(
                      children: kTools
                          .map((e) => ToolTechWidget(
                                techName: e,
                              ))
                          .toList(),
                    ),
                    Space.y!,
                    Divider(
                      color: Colors.grey[800],
                      thickness: AppDimensions.normalize(0.5),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            AboutMeData(
                              data: "Name",
                              information: "Mohammad Alfaz",
                            ),
                            AboutMeData(
                              data: "Age",
                              information: "26",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            AboutMeData(
                              data: "Email",
                              information: "alfawhocodes@gmail.com",
                            ),
                            AboutMeData(
                              data: "From",
                              information: "udupi, India",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Space.y1!,
                  ],
                ),
              ),
            ),
            Container(
              width: width < 1230 ? width * 0.05 : width * 0.1,
            ),
          ],
        ),
        const CustomSectionHeading(
          text: '\nTech Stackk ',
        ),
        const CustomSectionSubHeading(
          text: "Key Technologies I Utilize\n\n",
        ),
        SizedBox(
          height: 24,
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 12,
          runSpacing: 12,
          runAlignment: WrapAlignment.center,
          children: [
            ...WorkUtils.logos.asMap().entries.map(
                  (e) => CommunityIconBtn(
                    icon: e.value,
                    link: WorkUtils.communityLinks[e.key],
                    height: WorkUtils.communityLogoHeight[e.key],
                  ),
                )
          ],
        ),
      ],
    );
  }
}
