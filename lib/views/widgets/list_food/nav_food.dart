import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/views/utils/util_scroll.dart';
import 'package:mcdo/views/utils/util_theme.dart';
import 'dart:io' show Platform;
import 'package:provider/provider.dart';

class NavFood extends StatelessWidget {
  final ScrollController customScrollViewController;
  const NavFood({
    Key? key,
    required this.customScrollViewController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: NavFoodSliverPersistentHeaderDelegate(
          customScrollViewController: customScrollViewController),
    );
  }
}

class NavFoodScrollProps {
  double positionX;
  double itemPositionYStart;
  double itemPositionYEnd;

  NavFoodScrollProps(
      this.positionX, this.itemPositionYStart, this.itemPositionYEnd);
}

class NavFoodSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final ScrollController customScrollViewController;
  NavFoodSliverPersistentHeaderDelegate(
      {required this.customScrollViewController});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // vars
    final ScrollController _scrollController = ScrollController();
    double _oldUtilScrollChangeNotifierPosition = 0;

    // vars food scroll props list
    List<NavFoodScrollProps> navFoodScrollProps = [];
    navFoodScrollProps.add(NavFoodScrollProps(0, -1, 820));
    navFoodScrollProps.add(NavFoodScrollProps(
        130, navFoodScrollProps.last.itemPositionYEnd, 1627));
    navFoodScrollProps.add(NavFoodScrollProps(
        265, navFoodScrollProps.last.itemPositionYEnd, 2326));
    navFoodScrollProps.add(NavFoodScrollProps(
        375, navFoodScrollProps.last.itemPositionYEnd, 2864));
    navFoodScrollProps.add(NavFoodScrollProps(
        525, navFoodScrollProps.last.itemPositionYEnd, 3164));
    navFoodScrollProps.add(NavFoodScrollProps(
        700, navFoodScrollProps.last.itemPositionYEnd, 123456789));

    void scrollUpdate(UtilScrollChangeNotifier _utilScrollChangeNotifier) {
      // check if selected tab index has changed
      for (var itemTabFoodScrollProps in navFoodScrollProps) {
        if ((_utilScrollChangeNotifier.position >
                    itemTabFoodScrollProps.itemPositionYStart &&
                _utilScrollChangeNotifier.position <=
                    itemTabFoodScrollProps.itemPositionYEnd) &&
            !(_oldUtilScrollChangeNotifierPosition >
                    itemTabFoodScrollProps.itemPositionYStart &&
                _oldUtilScrollChangeNotifierPosition <=
                    itemTabFoodScrollProps.itemPositionYEnd)) {
          //print('tab index update');
          _scrollController.animateTo(
            itemTabFoodScrollProps.positionX,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
          );
        }
      }

      // update old scroll position var
      _oldUtilScrollChangeNotifierPosition = _utilScrollChangeNotifier.position;
    }

    return Consumer<UtilScrollChangeNotifier>(
        builder: (context, _utilScrollChangeNotifier, child) {
      scrollUpdate(_utilScrollChangeNotifier);
      return Container(
        color: theme.colBg1Accent2,
        child: Align(
          alignment: Alignment.centerLeft,
          child: SingleChildScrollView(
            padding:
                EdgeInsets.symmetric(horizontal: theme.spacing1, vertical: 18),
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Wrap(
              spacing: 12,
              children: [
                ItemTabFood(
                  name: 'Burgers',
                  image: 'assets/images/food_category_burgers.jpg',
                  selected: _utilScrollChangeNotifier.position >
                          navFoodScrollProps[0].itemPositionYStart &&
                      _utilScrollChangeNotifier.position <=
                          navFoodScrollProps[0].itemPositionYEnd,
                  itemPositionYStart: navFoodScrollProps[0].itemPositionYStart,
                  customScrollViewController: customScrollViewController,
                ),
                ItemTabFood(
                  name: 'Desserts',
                  image: 'assets/images/food_category_desserts.jpg',
                  selected: _utilScrollChangeNotifier.position >
                          navFoodScrollProps[1].itemPositionYStart &&
                      _utilScrollChangeNotifier.position <=
                          navFoodScrollProps[1].itemPositionYEnd,
                  itemPositionYStart: navFoodScrollProps[1].itemPositionYStart,
                  customScrollViewController: customScrollViewController,
                ),
                ItemTabFood(
                  name: 'Menu',
                  image: 'assets/images/food_category_menu.jpg',
                  selected: _utilScrollChangeNotifier.position >
                          navFoodScrollProps[2].itemPositionYStart &&
                      _utilScrollChangeNotifier.position <=
                          navFoodScrollProps[2].itemPositionYEnd,
                  itemPositionYStart: navFoodScrollProps[2].itemPositionYStart,
                  customScrollViewController: customScrollViewController,
                ),
                ItemTabFood(
                  name: 'Breakfast',
                  image: 'assets/images/food_category_breakfast.jpg',
                  selected: _utilScrollChangeNotifier.position >
                          navFoodScrollProps[3].itemPositionYStart &&
                      _utilScrollChangeNotifier.position <=
                          navFoodScrollProps[3].itemPositionYEnd,
                  itemPositionYStart: navFoodScrollProps[3].itemPositionYStart,
                  customScrollViewController: customScrollViewController,
                ),
                ItemTabFood(
                  name: 'Snacks & Sides',
                  image: 'assets/images/food_category_snacks.jpg',
                  selected: _utilScrollChangeNotifier.position >
                          navFoodScrollProps[4].itemPositionYStart &&
                      _utilScrollChangeNotifier.position <=
                          navFoodScrollProps[4].itemPositionYEnd,
                  itemPositionYStart: navFoodScrollProps[4].itemPositionYStart,
                  customScrollViewController: customScrollViewController,
                ),
                ItemTabFood(
                  name: 'Beverages',
                  image: 'assets/images/food_category_beverages.jpg',
                  selected: _utilScrollChangeNotifier.position >
                          navFoodScrollProps[5].itemPositionYStart &&
                      _utilScrollChangeNotifier.position <=
                          navFoodScrollProps[5].itemPositionYEnd,
                  itemPositionYStart: navFoodScrollProps[5].itemPositionYStart,
                  customScrollViewController: customScrollViewController,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  @override
  double get maxExtent => 75;

  @override
  double get minExtent => 75;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class ItemTabFood extends StatefulWidget {
  final String name;
  final String image;
  final bool selected;
  final double itemPositionYStart;
  final ScrollController customScrollViewController;
  const ItemTabFood({
    Key? key,
    required this.name,
    required this.image,
    this.selected = false,
    required this.itemPositionYStart,
    required this.customScrollViewController,
  }) : super(key: key);

  @override
  State<ItemTabFood> createState() => _ItemTabFoodState();
}

class _ItemTabFoodState extends State<ItemTabFood>
    with SingleTickerProviderStateMixin {
  // check if widget.selected has changed
  bool _oldSelected = false;
  void checkSelectedChange() {
    // check if changed
    if (widget.selected != _oldSelected) {
      //print('update ${widget.name}');

      // animate
      widget.selected
          ? _animationController.reverse()
          : _animationController.forward();
    }

    // update old selected
    _oldSelected = widget.selected;
  }

  // animations
  late AnimationController _animationController;
  late Animation _animationColor;

  @override
  void initState() {
    super.initState();

    // animation controller init
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    // animations init
    _animationColor =
        ColorTween(begin: theme.colBg4Accent2, end: theme.colBg1Accent1)
            .animate(_animationController);

    // animation listener
    _animationController.addListener(() {
      setState(() {});
    });

    // initial animation value (based on selection)
    widget.selected
        ? _animationController.value = 0
        : _animationController.value = 1;
  }

  @override
  Widget build(BuildContext context) {
    checkSelectedChange();
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(32),
      ),
      child: TextButton(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(4),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(32)),
                  child: Image(
                    image: AssetImage(widget.image),
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Transform.translate(
                offset: const Offset(0, -0.5),
                child: Text(
                  widget.name,
                  style: GoogleFonts.getFont(
                    theme.font1,
                    textStyle: TextStyle(
                      color: widget.selected
                          ? theme.colFg4Accent1
                          : theme.colFg2Accent2,
                      fontSize: theme.font1Size1,
                      fontWeight: theme.font1Weight1,
                      letterSpacing: theme.font1LetterSpacing1,
                      height: theme.font1Height1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          padding: !kIsWeb && Platform.isAndroid
              ? const EdgeInsets.all(7)
              : const EdgeInsets.fromLTRB(4, 12, 14, 12),
          minimumSize: Size.zero,
          primary: _animationColor.value,
          onPrimary:
              widget.selected ? theme.colBg4Accent3 : theme.colBg3Accent1,
        ),
        onPressed: () => {
          widget.customScrollViewController.animateTo(
            widget.itemPositionYStart + 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          )
        },
      ),
    );
  }
}
