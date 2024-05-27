import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/project_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nPortfolio",
        ),
        const CustomSectionSubHeading(
          text: "Here are few samples of my previous work :)\n\n",
        ),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: AppDimensions.normalize(10),
          children: [
            CarouselSlider.builder(
              itemCount: ProjectUtils.banners.length,
              itemBuilder: (BuildContext context, int index, int i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: ProjectCard(
                  banner: ProjectUtils.banners[index],
                  projectIcon: ProjectUtils.icons[index],
                  projectLink: ProjectUtils.links[index],
                  projectTitle: ProjectUtils.titles[index],
                  projectDescription: ProjectUtils.description[index],
                ),
              ),
              options: CarouselOptions(
                height: height * 0.35,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                enableInfiniteScroll: false,
              ),
            ),
          ],
        ),
        Space.y!,
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(50),
          child: OutlinedButton(
            onPressed: () => openURL(StaticUtils.gitHub),
            child: Text(
              'See More',
              style: AppText.l1b,
            ),
          ),
        )
      ],
    );
  }
}
