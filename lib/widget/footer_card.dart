import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';

import 'package:provider/provider.dart';

class FooterCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const FooterCard({
    Key? key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
  }) : super(key: key);
  @override
  FooterCardState createState() => FooterCardState();
}

class FooterCardState extends State<FooterCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.projectLink == null
          ? () {}
          : () => openURL(
                widget.projectLink!,
              ),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        margin: Space.h,
        padding: Space.all(),
        width: AppDimensions.normalize(150),
        height: width < 1200
            ? AppDimensions.normalize(40)
            : AppDimensions.normalize(60),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.projectIcon != null
                    ? Image.asset(
                        widget.projectIcon!,
                        height: 20,
                      )
                    : Container(),
                widget.projectIconData != null
                    ? Icon(
                        widget.projectIconData,
                        color: AppTheme.c!.primary!,
                        size: height * 0.05,
                      )
                    : Container(),
                Text(
                  widget.projectTitle,
                  style: AppText.b2b,
                  textAlign: TextAlign.center,
                ),
                width < 1200
                    ? Text(
                        widget.projectDescription,
                        style: TextStyle(fontSize: 8),
                        textAlign: TextAlign.center,
                      )
                    : Text(
                        widget.projectDescription,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    12), // Adjust the radius as per your design
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: widget.banner != null
                      ? Image.asset(
                          widget.banner!,
                          fit: BoxFit.fill,
                        )
                      : Container(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
