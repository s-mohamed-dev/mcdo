import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/views/utils/util_theme.dart';
import 'package:mcdo/views/widgets/card_delivery.dart';
import 'package:mcdo/views/widgets/form_disabled.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverPersistentHeader(
      pinned: true,
      delegate: AppBarSliverPersistentHeaderDelegate(
        expandedHeight: 390,
      ),
    );
  }
}

class AppBarSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const AppBarSliverPersistentHeaderDelegate({required this.expandedHeight})
      : super();

  double shrinkOpacity(double shrinkOffset) {
    // use a target percentage for quicker change
    double targetPercentage = 60;
    double opacity = (shrinkOffset / expandedHeight) > (targetPercentage / 100)
        ? (shrinkOffset - (expandedHeight * (targetPercentage / 100))) /
            (expandedHeight * ((100 - targetPercentage) / 100))
        : 0;
    // multiply for quicker change
    opacity *= 2.5;
    // clamp to 1 max
    if (opacity > 1) opacity = 1;

    // return opacity
    return opacity;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      children: [
        // banner / card delivery
        Transform.translate(
          offset: Offset(0, -(shrinkOffset / 5)),
          child: SizedBox(
            height: expandedHeight,
            child: Stack(
              children: [
                // banner
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  child: Image(
                    image: const AssetImage('assets/images/banner.jpg'),
                    height: 212,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(.2),
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
                // card delivery
                Positioned(
                  top: 184,
                  left: theme.spacing1,
                  right: theme.spacing1,
                  child: const CardDelivery(),
                ),
              ],
            ),
          ),
        ),

        // appbar
        SizedBox(
          height: kToolbarHeight + 44,
          child: AppBar(
            toolbarHeight: kToolbarHeight + 44,
            backgroundColor:
                theme.colBg5Accent1.withOpacity(shrinkOpacity(shrinkOffset)),
            foregroundColor: Colors.black,
            elevation: 0,
            // leading
            leadingWidth: 38 + theme.spacing1,
            /*leading: Padding(
              padding: EdgeInsets.only(
                left: theme.spacing1,
                top: !kIsWeb && Platform.isAndroid ? 22 : 44,
                bottom: !kIsWeb && Platform.isAndroid ? 11 : 20,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(38),
                ),
                child: ElevatedButton(
                  child: Icon(
                    Icons.arrow_back,
                    color: theme.colFg1Accent1,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    minimumSize: Size.zero,
                    primary:
                        theme.colBg1Accent1.withOpacity(theme.colTransparency1),
                    elevation: 0,
                  ),
                  onPressed: () => {},
                ),
              ),
            ),*/
            // title
            centerTitle: true,
            title: Opacity(
              opacity: shrinkOpacity(shrinkOffset),
              child: Padding(
                padding: EdgeInsets.only(
                  top: !kIsWeb && Platform.isAndroid ? 22 : 44,
                  bottom: !kIsWeb && Platform.isAndroid ? 11 : 20,
                ),
                child: Text(
                  'Mcdonalds',
                  style: GoogleFonts.getFont(
                    theme.font1,
                    textStyle: TextStyle(
                      color: theme.colFg1Accent1,
                      fontSize: theme.font1Size3,
                      fontWeight: theme.font1Weight3,
                      letterSpacing: theme.font1LetterSpacing1,
                      height: theme.font1Height1,
                    ),
                  ),
                ),
              ),
            ),
            // actions
            actions: [
              FormDisabled(
                child: SizedBox(
                  width: 38 + theme.spacing1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: theme.spacing1,
                      top: !kIsWeb && Platform.isAndroid ? 22 : 44,
                      bottom: !kIsWeb && Platform.isAndroid ? 11 : 20,
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(38),
                      ),
                      child: ElevatedButton(
                        child: Icon(
                          Icons.search_rounded,
                          color: theme.colFg1Accent1,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          minimumSize: Size.zero,
                          primary: theme.colBg1Accent1
                              .withOpacity(theme.colTransparency1),
                          elevation: 0,
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 44;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
