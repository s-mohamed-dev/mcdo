import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mcdo/configs/config_constant.dart';
import 'package:mcdo/views/pages/page_home.dart';
import 'package:mcdo/views/temp/temp_mockup.dart';
import 'package:mcdo/views/utils/util_scroll.dart';
import 'package:mcdo/views/utils/util_splash_screen.dart' as util_splash_screen;
import 'package:mcdo/views/utils/util_theme.dart';
import 'package:mcdo/views/widgets/app_bar.dart';
import 'package:mcdo/views/widgets/list_food/nav_food.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // keep splash screen until initialization has completed
  FlutterNativeSplash.removeAfter(util_splash_screen.initialization);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UtilScrollChangeNotifier _utilScrollChangeNotifier =
        UtilScrollChangeNotifier(0);
    final ScrollController _scrollController = ScrollController();

    // on scroll event
    _scrollController.addListener(() {
      //print(_scrollController.position.pixels);
      _utilScrollChangeNotifier.position = _scrollController.position.pixels;
    });
    //Scroll to the specified position
    //_scrollController.animateTo(20.0);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mcdo',
      // allow scroll for web/desktop like mobile using mouse drag
      scrollBehavior: UtilScrollBehavior(),
      home: mockupEnabled
          ? TempMockup(
              content: ChangeNotifierProvider(
                create: (context) => _utilScrollChangeNotifier,
                builder: (context, child) {
                  return CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      // app bar
                      const MyAppBar(),
                      // contents
                      NavFood(customScrollViewController: _scrollController),
                      const SliverToBoxAdapter(child: PageHome()),
                    ],
                  );
                },
              ),
            )
          : Scaffold(
              backgroundColor: theme.colBg1Accent2,
              body: ChangeNotifierProvider(
                create: (context) => _utilScrollChangeNotifier,
                builder: (context, child) {
                  return CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      // app bar
                      const MyAppBar(),
                      // contents
                      NavFood(customScrollViewController: _scrollController),
                      const SliverToBoxAdapter(child: PageHome()),
                    ],
                  );
                },
              ),
            ),
    );
  }
}
