import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/views/utils/util_theme.dart';
import 'package:mcdo/views/widgets/form_disabled.dart';

class CardDelivery extends StatelessWidget {
  const CardDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(32),
      ),
      child: Container(
        color: theme.colBg1Accent1,
        padding: const EdgeInsets.fromLTRB(18, 22, 22, 17),
        // header / list delivery info
        child: Column(
          children: [
            // header (mcdo brand (logo / brand / like))
            Padding(
              padding: const EdgeInsets.only(left: 2, bottom: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // logo / brand
                  Row(
                    children: [
                      // logo
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40),
                        ),
                        child: Container(
                          color: theme.colBg4Accent1,
                          width: 45,
                          height: 45,
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            'assets/images/logo.svg',
                          ),
                        ),
                      ),
                      // spacing
                      const SizedBox(width: 16),
                      // brand
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
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
                          const SizedBox(height: 4),
                          Text(
                            'Fast food brand',
                            style: GoogleFonts.getFont(
                              theme.font1,
                              textStyle: TextStyle(
                                color: theme.colFg2Accent1,
                                fontSize: theme.font1Size2,
                                fontWeight: theme.font1Weight2,
                                letterSpacing: theme.font1LetterSpacing2,
                                height: theme.font1Height1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // like
                  FormDisabled(
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        child: ElevatedButton(
                          child: Icon(
                            Icons.favorite,
                            color: theme.colBg3Accent1,
                            size: 20,
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            minimumSize: Size.zero,
                            primary: theme.colBg1Accent2,
                            elevation: 0,
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // list delivery info
            Column(
              children: const [
                // delivery time
                ItemCardDelivery(
                  icon: Icons.delivery_dining,
                  iconSize: 24,
                  description: 'Delivery time 30-40 min',
                  buttonVisible: true,
                ),
                // rating
                ItemCardDelivery(
                  icon: Icons.thumb_up_alt,
                  iconSize: 19,
                  description: 'Excellent',
                  descriptionExtra: '9.2',
                ),
                // delivery cost
                ItemCardDelivery(
                  icon: Icons.monetization_on_rounded,
                  iconSize: 19,
                  description: 'Delivery Cost 3.5',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCardDelivery extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final String description;
  final String descriptionExtra;
  final bool buttonVisible;
  const ItemCardDelivery({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.description,
    this.descriptionExtra = '',
    this.buttonVisible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 29),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // icon / text
          Row(
            children: [
              // icon
              Transform.translate(
                offset: const Offset(0, -1),
                child: SizedBox(
                  width: 23,
                  child: Icon(
                    icon,
                    size: iconSize,
                    color: theme.colBg4Accent2,
                  ),
                ),
              ),
              // spacing
              const SizedBox(width: 14),
              // text
              Row(
                children: [
                  Text(
                    description,
                    style: GoogleFonts.getFont(
                      theme.font1,
                      textStyle: TextStyle(
                        color: theme.colFg1Accent1,
                        fontSize: theme.font1Size1,
                        fontWeight: theme.font1Weight2,
                        letterSpacing: theme.font1LetterSpacing2,
                        height: theme.font1Height1,
                      ),
                    ),
                  ),
                  if (description != '')
                    (Text(
                      ' ' + descriptionExtra,
                      style: GoogleFonts.getFont(
                        theme.font1,
                        textStyle: TextStyle(
                          color: theme.colFg3Accent1,
                          fontSize: theme.font1Size1,
                          fontWeight: theme.font1Weight2,
                          letterSpacing: theme.font1LetterSpacing2,
                          height: theme.font1Height1,
                        ),
                      ),
                    )),
                ],
              ),
            ],
          ),
          // button change
          if (buttonVisible)
            (FormDisabled(
              child: (TextButton(
                onPressed: () => {},
                child: Text(
                  'Change',
                  style: GoogleFonts.getFont(
                    theme.font1,
                    textStyle: TextStyle(
                      color: theme.colFg3Accent1,
                      fontSize: theme.font1Size1,
                      fontWeight: theme.font1Weight1,
                      letterSpacing: theme.font1LetterSpacing1,
                      height: theme.font1Height1,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 9),
                  minimumSize: Size.zero,
                  primary: theme.colBg4Accent3,
                  onPrimary: theme.colBg4Accent2,
                  elevation: 0,
                ),
              )),
            )),
        ],
      ),
    );
  }
}
