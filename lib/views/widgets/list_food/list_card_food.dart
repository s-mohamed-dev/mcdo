import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/views/utils/util_theme.dart';

class ListCardFood extends StatelessWidget {
  const ListCardFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: theme.spacing1, vertical: 14),
      // list title / list card
      child: Column(
        children: [
          // title / list card
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                // title
                const TitleCardFood(name: 'Burgers'),
                // list card
                Column(
                  children: const [
                    ItemCardFood(
                      image: 'assets/images/food_item_hamburger.jpg',
                      name: 'Hamburger',
                      description:
                          'The original burger starts with a 100% pure beef burger seasoned with just a pinch of salt and pepper. Then, the McDonald’s burger is topped with a tangy pickle, chopped onions, ketchup and mustard. McDonald’s hamburger contains no artificial flavors, preservatives or added colors from artificial sources.* Our pickle contains an artificial preservative, so skip it if you like.',
                      price: '2.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_double_cheeseburger.jpg',
                      name: 'Double Cheeseburger',
                      description:
                          'The McDonald\'s Double Cheeseburger features two 100% pure beef burger patties seasoned with just a pinch of salt and pepper. It\'s topped with tangy pickles, chopped onions, ketchup, mustard and two slices of melty American cheese. There are 450 calories in a McDonald\'s Double Cheeseburger. It contains no artificial flavors, preservatives or added colors from artificial sources.* Our pickle contains an artificial preservative, so skip it if you like. Pick up on your terms through the drive thru or with McDonald\'s curbside pickup when you Mobile Order & Pay! McDonald\'s App download and registration required.',
                      price: '4.7 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_quarter_pounder.jpg',
                      name: 'Quarter Pounder',
                      description:
                          'Each Quarter Pounder® with Cheese burger features a ¼ lb.* of 100% fresh beef that’s hot, deliciously juicy and cooked when you order. It’s seasoned with just a pinch of salt and pepper, sizzled on a flat iron grill, then topped with slivered onions, tangy pickles and two slices of melty American cheese on a sesame seed bun. Our QPC® contains no artificial flavors, preservatives or added colors from artificial sources. **Our pickle contains an artificial preservative, so skip it if you like. A Quarter Pounder® with Cheese has 520 Calories. Order one today with Mobile Order & Pay!',
                      price: '5.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_bigmac.jpg',
                      name: 'Big Mac',
                      description:
                          'Mouthwatering perfection starts with two 100% pure beef patties and Big Mac® sauce sandwiched between a sesame seed bun. It’s topped off with pickles, crisp shredded lettuce, finely chopped onion and American cheese for a 100% beef burger with a taste like no other. It contains no artificial flavors, preservatives or added colors from artificial sources.* Our pickle contains an artificial preservative, so skip it if you like. There are 550 calories in a Big Mac®. Order one today using the McDonald\'s App to Mobile Order & Pay! Download the McDonald’s app and earn points on every order with MyMcDonald\'s Rewards to redeem for a free Big Mac®.',
                      price: '7.5 \$',
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                // title
                const TitleCardFood(name: 'Desserts'),
                // list card
                Column(
                  children: const [
                    ItemCardFood(
                      image: 'assets/images/food_item_baked_apple_pie.jpg',
                      name: 'Baked Apple Pie',
                      description:
                          'McDonald\'s Baked Apple Pie recipe features 100% American-grown apples, and a lattice crust baked to perfection and topped with sprinkled sugar. There are 230 calories in McDonald\'s apple pie. Pair it with a Hot Caramel Sundae for your own twist on Apple Pie A-La-Mode! Order a Baked Apple Pie today and get it curbside with Mobile Order & Pay! Get it delivered with McDelivery®!',
                      price: '2.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_mcflurry_mm.jpg',
                      name: 'McFlurry with M&M\'S Candies',
                      description:
                          'The McDonald’s M&M ® McFlurry® is a sweet, creamy M&M’S® dessert of vanilla soft serve with M&M’S® chocolate candies swirled in. Available in Regular Size and Snack Size. Check out all of McDonald\'s McFlurry® Flavors.',
                      price: '3.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_chocolate_shake.jpg',
                      name: 'Chocolate Shake',
                      description:
                          'Try the McDonald’s Chocolate Shake, the perfect sweet treat for any time of the day. Our chocolate shake is made with delicious soft serve, chocolate syrup and finished off with a creamy whipped topping. McDonald\'s Chocolate Shake is available in small, medium and large. Explore other delicious desserts on the McDonald’s Desserts & Shakes Menu. ',
                      price: '4.0 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_strawberry_shake.jpg',
                      name: 'Strawberry Shake',
                      description:
                          'McDonald\'s Strawberry Shake is made with creamy vanilla soft serve, blended with strawberry syrup and topped with whipped topping. There are 530 calories in a small Strawberry Shake at McDonald\'s. Available in small, medium, and large. Get your Strawberry Shake through the drive thru or with McDonald\'s curbside pickup when you Mobile Order & Pay! McDonald\'s App download and registration required. ',
                      price: '4.0 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_hot_fudge_sundae.jpg',
                      name: 'Hot Fudge Sundae',
                      description:
                          'Our classic hot fudge sundae is made with creamy vanilla soft serve and smothered in chocolaty hot fudge topping. There are 330 calories in a Hot Fudge Sundae at McDonald\'s. Order one today with Mobile Order & Pay!',
                      price: '4.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_mcflurry_oreo.jpg',
                      name: 'McFlurry with OREO cookies',
                      description:
                          'The McDonald’s McFlurry® with OREO® Cookies is an popular combination of OREO® pieces and vanilla soft serve! Available in Regular Size and Snack Size on the McDonald\'s Desserts & Shakes menu. ',
                      price: '3.5 \$',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                // title
                const TitleCardFood(name: 'Menu'),
                // list card
                Column(
                  children: const [
                    ItemCardFood(
                      image: 'assets/images/food_item_bigmac_combo_meal.jpg',
                      name: 'Big Mac® Combo Meal',
                      description:
                          'The one and only McDonald’s Big Mac® Combo Meal. Big Mac Ingredients include a classic sesame hamburger bun, Big Mac Sauce, American cheese and sliced pickles. McDonald\'s Big Mac meal is served with our World Famous Fries® and your choice of an icy Coca-Cola® or other fountain drink. There are 1,080 calories in a Big Mac® Combo Meal with a medium Coca-Cola® and medium fries. Get one today using Mobile Order & Pay or get it straight to your door with McDelivery®!',
                      price: '8.7 \$',
                    ),
                    ItemCardFood(
                      image:
                          'assets/images/food_item_cheeseburger_combo_meal.jpg',
                      name: 'Cheeseburger Combo Meal',
                      description:
                          'McDonald\'s Cheeseburger Meal is 2 simple, satisfying classic 100% beef burgers, served with our World Famous Fries® and your choice of a medium McDonald’s soda or soft drink. There are 1,130 calories in a Cheeseburger Combo Meal with a medium Coca-Cola® and medium fries. Get a cheeseburger combo meal today with Mobile Order & Pay or McDelivery®!',
                      price: '8.5 \$',
                    ),
                    ItemCardFood(
                      image:
                          'assets/images/food_item_chicken_mcnuggets_meal.jpg',
                      name: '10 piece Chicken McNuggets® Meal',
                      description:
                          'The McDonald\'s 10 piece Chicken McNuggets® Combo Meal features 10 tender and delicious Chicken McNuggets® made with all white meat chicken—plus our World Famous Fries® and your choice of a Medium McDonald’s drink. There are 950 calories in a Chicken McNuggets® Combo Meal with medium Fries and a medium Coca-Cola®. Get it today when you Mobile Order & Pay or get it delivered with McDelivery®.',
                      price: '8.0 \$',
                    ),
                    ItemCardFood(
                      image:
                          'assets/images/food_item_chicken_sandwich_combo_meal.jpg',
                      name: 'Deluxe Crispy Chicken Sandwich Combo Meal',
                      description:
                          'Take crispy, juicy and tender to the next level with our Deluxe Crispy Chicken Sandwich combo meal. Part of McDonald’s chicken sandwich lineup, it features shredded lettuce, Roma tomatoes and mayo topping southern style fried chicken. The combo meal is served with our World Famous Fries® and your choice of an icy soft drink. There are 1050 calories in a Deluxe Crispy Chicken Sandwich meal with a medium Sprite® and medium Fries.',
                      price: '8.2 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_filet_o_fish_meal.jpg',
                      name: 'Filet-O-Fish® Meal',
                      description:
                          'Our Filet-O-Fish combo meal is a classic fish sandwich meal made with wild-caught Alaskan Pollock on a regular McDonald’s bun, served with our World Famous Fries® and your choice of an icy soft drink. There are 900 calories in a Filet-O-Fish Meal at McDonald’s with a medium Sprite® and medium French Fries. Enjoy a Filet-O-Fish® Meal today using Mobile Order & Pay or get it delivered with McDelivery®!',
                      price: '8.0 \$',
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                // title
                const TitleCardFood(name: 'Breakfast'),
                // list card
                Column(
                  children: const [
                    ItemCardFood(
                      image: 'assets/images/food_item_egg_mcmuffin.jpg',
                      name: 'Egg McMuffin',
                      description:
                          'Our Egg McMuffin® breakfast sandwich is an excellent source of protein and oh so delicious. We place a freshly cracked Grade A egg on a toasted English Muffin topped with real butter and add lean Canadian bacon and melty American cheese. There are 310 calories in an Egg McMuffin®. Pair it with a Premium Roast Coffee and pass the line when you use Mobile Order & Pay, only on the McDonald’s app!',
                      price: '3.2 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_big_breakfast.jpg',
                      name: 'Big Breakfast',
                      description:
                          'Our full, satisfying Big Breakfast® is perfect for any morning. Wake up to a breakfast meal with a warm biscuit, fluffy scrambled eggs, savory McDonald\'s sausage, and crispy golden hash browns. There are 750 calories in Big Breakfast® at McDonald\'s. Want it quick? Use the McDonald’s App to Mobile Order & Pay!',
                      price: '3.7 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_hotcakes.jpg',
                      name: 'Hotcakes',
                      description:
                          'If you love pancakes, you\'ve got to try McDonald\'s hotcakes with a side of real butter and sweet maple flavored hotcake syrup. This McDonald\'s breakfast comes with 3 golden brown hotcakes. There are 580 calories in McDonald\'s hotcakes. Order it with a Premium Roast Coffee for the perfect breakfast combo. Get an order of McDonald\'s hotcakes for breakfast using Mobile Order & Pay in the McDonald\'s App.',
                      price: '2.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_fruit_maple_oatmeal.jpg',
                      name: 'Fruit & Maple Oatmeal',
                      description:
                          'Our Fruit and Maple Oatmeal has two full servings of whole-grain oats with a touch of cream and brown sugar. Loaded with red and green apples, cranberries and two varieties of raisins, our oatmeal makes for a hearty, wholesome breakfast of whole grains and fruit. There are 320 calories in a McDonald\'s Fruit and Maple Oatmeal. Pair it with a McCafé® Premium Roast Coffee to complete your meal. Enjoy oatmeal for breakfast with Mobile Order & Pay or get it delivered with McDelivery®!',
                      price: '3.0 \$',
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                // title
                const TitleCardFood(name: 'Snacks & Sides'),
                // list card
                Column(
                  children: const [
                    ItemCardFood(
                      image: 'assets/images/food_item_fries.jpg',
                      name: 'World Famous Fries',
                      description:
                          'McDonald\'s World Famous Fries® are made with premium potatoes such as the Russet Burbank and the Shepody. With 0g of trans fat per labeled serving, these epic fries are crispy and golden on the outside and fluffy on the inside. Best of all, you can get medium Fries for free every Friday with any \$1 purchase, exclusively in the McDonald’s App. Grab our World Famous Fries® and pair with one of our classic McDonald’s Burgers today! There are 220 calories in a small McDonald\'s fries. Order your fries today with McDelivery® or get them with curbside pickup using Mobile Order & Pay!',
                      price: '1.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_apple_slices.jpg',
                      name: 'Apple Slices',
                      description:
                          'McDonald’s Apple Slices are a wholesome, tasty side made from real apples. Specially selected varieties mean our apple slices are always crisp and juicy, making for a tasty snack with 15 calories per labelled serving. Enjoy it as a Snack or Side to your meal!',
                      price: '1.2 \$',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                // title
                const TitleCardFood(name: 'Beverages'),
                // list card
                Column(
                  children: const [
                    ItemCardFood(
                      image:
                          'assets/images/food_item_medium_strawberry_watermelon_slushie.jpg',
                      name: 'Minute Maid® Strawberry Watermelon Slushie',
                      description:
                          'Sweet strawberry flavors combined with a candy watermelon taste for a cool, refreshing treat. Chill out with this summer drink that goes great with your favorite McDonald’s Burgers and World Famous Fries®. Available in small, medium and large sizes. There are 190 calories in a small Minute Maid® Strawberry Watermelon Slushie.',
                      price: '1.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_sprite.jpg',
                      name: 'Sprite',
                      description:
                          'Sprite® is a delicious lemon-lime fountain drink and is available in sizes extra small, small, medium, and large. Sprite® is a caffeine-free soda that makes the perfect addition to any McDonald’s Combo Meal. There are 140 calories in a Small Sprite® at McDonald\'s. Get one today with McDelivery® or get it with curbside pickup using Mobile Order & Pay!',
                      price: '1.7 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_dr_pepper.jpg',
                      name: 'Dr Pepper',
                      description:
                          'McDonald\'s serves Dr Pepper®, the classic and refreshing fountain drink with a unique blend of 23 flavors. Dr Pepper® pairs perfectly with any of your favorite menu items. There are 140 calories in a small Dr Pepper at McDonald\'s. Available in extra small, small, medium and large for \$1 on our \$1 \$2 \$3 Dollar Menu. Get it today in the App with Mobile Order & Pay!',
                      price: '1.2 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_fanta.jpg',
                      name: 'Fanta',
                      description:
                          'McDonald’s Fanta® Orange is a caffeine-free soft drink full of bubbly, refreshing orange flavor. There are 150 calories in a small Fanta® Orange. Fanta® Orange soda is part of McDonald’s \$1 Any Size Soft Drinks on the \$1 on our \$1 \$2 \$3 Dollar Menu. Available in small, medium, and large fountain drink sizes. Get it today in the App with Mobile Order & Pay!',
                      price: '1.5 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_ice_tea.jpg',
                      name: 'Sweet Tea',
                      description:
                          'McDonald’s Sweet Tea is made from a briskly refreshing blend of orange pekoe and pekoe cut black tea, sweetened to perfection. Sweet Tea from McDonald’s is part of the Beverages Menu. Available in extra small, small, medium and large.',
                      price: '1.3 \$',
                    ),
                    ItemCardFood(
                      image: 'assets/images/food_item_dasani_water.jpg',
                      name: 'DASANI® Water',
                      description:
                          'DASANI is purified water enhanced with minerals for a pure, fresh taste.',
                      price: '1.0 \$',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TitleCardFood extends StatelessWidget {
  final String name;
  const TitleCardFood({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 27.5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          name,
          style: GoogleFonts.getFont(
            theme.font1,
            textStyle: TextStyle(
              color: theme.colFg1Accent1,
              fontSize: theme.font1Size3,
              fontWeight: theme.font1Weight3,
              letterSpacing: theme.font1LetterSpacing2,
              height: theme.font1Height1,
            ),
          ),
        ),
      ),
    );
  }
}

class ItemCardFood extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String price;
  const ItemCardFood({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _cardHeight = 80;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          color: theme.colBg3Accent3,
          child: Row(
            children: [
              // item food card image
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Container(
                  height: _cardHeight,
                  width: _cardHeight,
                  color: theme.colBg1Accent1,
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
              ),

              // item food card name / description
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: _cardHeight),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // item food card name
                        Text(
                          name,
                          style: GoogleFonts.getFont(
                            theme.font1,
                            textStyle: TextStyle(
                              color: theme.colFg1Accent1,
                              fontSize: theme.font1Size4,
                              fontWeight: theme.font1Weight3,
                              letterSpacing: theme.font1LetterSpacing2,
                              height: theme.font1Height1,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),

                        // item food card description
                        Text(
                          description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: GoogleFonts.getFont(
                            theme.font1,
                            textStyle: TextStyle(
                              color: theme.colFg2Accent2,
                              fontSize: theme.font1Size5,
                              fontWeight: theme.font1Weight1,
                              letterSpacing: theme.font1LetterSpacing2,
                              height: theme.font1Height2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // item food card price / extra button
              ConstrainedBox(
                constraints: BoxConstraints(minHeight: _cardHeight),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // item food card price
                      Text(
                        price,
                        style: GoogleFonts.getFont(
                          theme.font1,
                          textStyle: TextStyle(
                            color: theme.colFg3Accent1,
                            fontSize: theme.font1Size2,
                            fontWeight: theme.font1Weight2,
                            letterSpacing: theme.font1LetterSpacing2,
                            height: theme.font1Height1,
                          ),
                        ),
                      ),
                      // item food card extra button
                      SizedBox(
                        width: 29,
                        height: 29,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(29)),
                          child: TextButton(
                            onPressed: () => {},
                            child: Transform.translate(
                              offset: const Offset(0, .5),
                              child: Text(
                                '+',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  theme.font1,
                                  textStyle: TextStyle(
                                    color: theme.colFg4Accent1,
                                    fontSize: theme.font1Size3,
                                    fontWeight: theme.font1Weight1,
                                    letterSpacing: theme.font1LetterSpacing2,
                                    height: theme.font1Height1,
                                  ),
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              minimumSize: Size.zero,
                              primary: theme.colBg4Accent2,
                              onPrimary: theme.colBg4Accent3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
