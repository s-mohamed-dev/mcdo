import 'package:flutter/material.dart';
import 'package:mcdo/views/widgets/list_food/list_card_food.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // list card food
        ListCardFood(),
      ],
    );
  }
}
