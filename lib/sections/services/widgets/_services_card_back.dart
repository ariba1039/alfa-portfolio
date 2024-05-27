part of '../services.dart';

class _ServiceCardBackWidget extends StatelessWidget {
  const _ServiceCardBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: AppText.l1,
          textAlign: TextAlign.center,
        ),
        // Divider(
        //   color: appProvider.isDark ? Colors.white : Colors.black38,
        // ),
        Container(
          margin: EdgeInsets.only(right: 24, left: 24),
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(64),
          child: MaterialButton(
            color: AppTheme.c!.primary,
            onPressed: () => showDialog(
                context: context,
                builder: (contecxt) => AlertDialog(
                      title: Text(
                        "Contact Me!",
                        style: AppText.b2b,
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Close"),
                        )
                      ],
                      content: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: IconButton(
                              onPressed: () => openURL(
                                'https://api.whatsapp.com/send?phone=918618789709',
                              ),
                              color: const Color(0xff34CB62),
                              icon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Space.x!,
                                  const Icon(
                                    FontAwesomeIcons.whatsapp,
                                    color: Colors.white,
                                  ),
                                  Space.x!,
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              onPressed: () => openURL(
                                'https://www.instagram.com/alfawhocodes',
                              ),
                              color: const Color(0xff34CB62),
                              icon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Space.x!,
                                  const Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                  ),
                                  Space.x!,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
            child: Text(
              'CONTACT ME!',
              style: AppText.b2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
