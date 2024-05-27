import 'package:folio/configs/configs.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/utils/work_utils.dart';

import 'package:folio/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nAbout Me',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: 'Get to know me :)',
            ),
          ),
          Space.y1!,
          Column(
            children: [
              Container(
                width: height * 0.27,
                height: height * 0.27,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0, // Adjust the width as needed
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    StaticUtils.mobilePhotoBw,
                    height: height * 0.27,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: Space.h2,
            child: Text(
              "Who am I?",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          Container(
            padding: Space.h2,
            child: Text(
              AboutUtils.aboutMeHeadline,
              style: AppText.b2b!.copyWith(
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            padding: Space.h2,
            child: Text(
              AboutUtils.aboutMeDetail,
              style: AppText.l1!.copyWith(
                height: 2,
                letterSpacing: 1.1,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Container(
            padding: Space.h2,
            child: Text(
              'Languages I have worked with:',
              style: AppText.l1!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Container(
            padding: Space.h2,
            child: Row(
              children: kTools
                  .map(
                    (e) => ToolTechWidget(techName: e),
                  )
                  .toList(),
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Container(
            padding: Space.h2,
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AboutMeData(
                      data: "Name",
                      information: "Mohammed Alfaz",
                    ),
                    AboutMeData(
                      data: "Age",
                      information: "26",
                    ),
                  ],
                ),
                SizedBox(
                  width: width > 710 ? width * 0.2 : width * 0.05,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AboutMeData(
                      data: "Email",
                      information: "alfawhocodes@gmail.com",
                    ),
                    AboutMeData(
                      data: "From",
                      information: "Udupi, IN",
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSectionHeading(
                text: '\nTech Stack ',
              ),
              const CustomSectionSubHeading(
                text: "Technology stack i work upon\n\n",
              ),
            ],
          ),
          Container(
            padding: Space.h2,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 12,
              runSpacing: 24,
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
          ),
        ],
      ),
    );
  }
}
