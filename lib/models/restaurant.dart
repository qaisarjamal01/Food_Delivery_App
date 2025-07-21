import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant with ChangeNotifier{
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: 'Classic Cheeseburger',
      description: 'A juicy beef patty with melted cheddar,lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burgers/burger 1.jpeg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.5),
        Addon(name: 'Avocado', price: 1.9)
      ],
    ),

    Food(
      name: 'BBQ Bacon Burger',
      description: 'Smoky BBQ sauce,crispy bacon, and onion rings make this beef burger a savory delight.',
      imagePath: 'assets/images/burgers/burger 2.jpeg',
      price: 0.8,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.5),
        Addon(name: 'Avocado', price: 1.9)
      ],
    ),

    Food(
      name: 'Veggie Burger',
      description: 'A juicy beef patty with melted cheddar,lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burgers/burger 3.jpeg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.5),
        Addon(name: 'Avocado', price: 1.9)
      ],
    ),

    Food(
      name: 'Blue Moon Burger',
      description: 'A juicy beef patty with melted cheddar,lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burgers/burger 4.jpeg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.5),
        Addon(name: 'Avocado', price: 1.9)
      ],
    ),

    Food(
      name: 'Aloha Burger',
      description: 'A juicy beef patty with melted cheddar,lettuce, tomato, and a hint of onion and pickle.',
      imagePath: 'assets/images/burgers/burger 5.jpeg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.5),
        Addon(name: 'Avocado', price: 1.9)
      ],
    ),

    //salads
    Food(
      name: 'Caesar Salad',
      description: 'crip romaine lettuce,parmesan cheese, croutons, and Caesar dressings',
      imagePath: 'assets/images/salads/salad 1.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.99),
        Addon(name: 'Extra Parmesan', price: 1.45)
      ],
    ),

    Food(
      name: 'Greek Salad',
      description: 'crip romaine lettuce,parmesan cheese, croutons, and Caesar dressings',
      imagePath: 'assets/images/salads/salad 2.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.99),
        Addon(name: 'Extra Parmesan', price: 1.45)
      ],
    ),

    Food(
      name: 'Quinoa Salad',
      description: 'crip romaine lettuce,parmesan cheese, croutons, and Caesar dressings',
      imagePath: 'assets/images/salads/salad 3.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.99),
        Addon(name: 'Extra Parmesan', price: 1.45)
      ],
    ),

    Food(
      name: 'Asian Sesame Salad',
      description: 'crip romaine lettuce,parmesan cheese, croutons, and Caesar dressings',
      imagePath: 'assets/images/salads/salad 4.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.99),
        Addon(name: 'Extra Parmesan', price: 1.45)
      ],
    ),

    Food(
      name: 'South West Chicken Salad',
      description: 'crip romaine lettuce,parmesan cheese, croutons, and Caesar dressings',
      imagePath: 'assets/images/salads/salad 5.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.99),
        Addon(name: 'Extra Parmesan', price: 1.45)
      ],
    ),

    //sides
    Food(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of salt.',
      imagePath: 'assets/images/sides/sides 1.jpeg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.5),
        Addon(name: 'Truffle Oil', price: 1.7),
        Addon(name: 'Cajun Spice', price: 1.8)
      ],
    ),

    Food(
      name: 'Onion Rings',
      description: 'Onion rings with a touch of salt.',
      imagePath: 'assets/images/sides/sides 2.jpeg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.5),
        Addon(name: 'Truffle Oil', price: 1.7),
        Addon(name: 'Cajun Spice', price: 1.8)
      ],
    ),

    Food(
      name: 'Garlic Bread',
      description: 'Garlic bread with a touch of salt.',
      imagePath: 'assets/images/sides/sides 3.jpeg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.5),
        Addon(name: 'Truffle Oil', price: 1.7),
        Addon(name: 'Cajun Spice', price: 1.8)
      ],
    ),

    Food(
      name: 'Loaded Sweet Potato Fries',
      description: 'Crispy loaded sweet potato fries with a touch of salt.',
      imagePath: 'assets/images/sides/sides 4.jpeg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.5),
        Addon(name: 'Truffle Oil', price: 1.7),
        Addon(name: 'Cajun Spice', price: 1.8)
      ],
    ),

    Food(
      name: 'Crispy Mac & Cheese Bites',
      description: 'Crispy mac & cheese bites with a touch of salt.',
      imagePath: 'assets/images/sides/sides 5.jpeg',
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.5),
        Addon(name: 'Truffle Oil', price: 1.7),
        Addon(name: 'Cajun Spice', price: 1.8)
      ],
    ),

    //desserts
    Food(
      name: 'Chocolate Brownie',
      description: 'Rich and food chocolate brownie, with chunks of chocolate.',
      imagePath: 'assets/images/disserts/disserts 1.jpeg',
      price: 3.66,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 0.99),
        Addon(name: 'Hot Fudge', price: 1.9),
        Addon(name: 'Whipped Cream', price: 1.6)
      ],
    ),

    Food(
      name: 'CheeseCake',
      description: 'Rich and food chocolate cheesecake, with chunks of chocolate.',
      imagePath: 'assets/images/disserts/disserts 2.jpeg',
      price: 3.66,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 0.99),
        Addon(name: 'Hot Fudge', price: 1.9),
        Addon(name: 'Whipped Cream', price: 1.6)
      ],
    ),

    Food(
      name: 'Apple Pie',
      description: 'Rich and food apple pie, with chunks of chocolate.',
      imagePath: 'assets/images/disserts/disserts 2.jpeg',
      price: 3.66,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 0.99),
        Addon(name: 'Hot Fudge', price: 1.9),
        Addon(name: 'Whipped Cream', price: 1.6)
      ],
    ),

    Food(
      name: 'Red Velvet Lava Cake',
      description: 'Rich and food red velvet lava cake, with chunks of chocolate.',
      imagePath: 'assets/images/disserts/disserts 4.jpeg',
      price: 3.66,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 0.99),
        Addon(name: 'Hot Fudge', price: 1.9),
        Addon(name: 'Whipped Cream', price: 1.6)
      ],
    ),

    Food(
      name: 'Chocolate Vanilla',
      description: 'Rich and food chocolate vanilla, with chunks of chocolate.',
      imagePath: 'assets/images/disserts/disserts 5.jpeg',
      price: 3.66,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 0.99),
        Addon(name: 'Hot Fudge', price: 1.9),
        Addon(name: 'Whipped Cream', price: 1.6)
      ],
    ),

    //drinks
    Food(
      name: 'Lemonade',
      description: 'Refreshing lemonade made with real lemons and a touch of sweetness.',
      imagePath: 'assets/images/drinks/drinks 1.jpeg',
      price: 6.44,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavor', price: 1.8),
        Addon(name: 'Mint Leaves', price: 1.6),
        Addon(name: 'Ginger Zest', price: 1.5)
      ],
    ),

    Food(
      name: 'Ice Tea',
      description: 'Refreshing ice tea made with real tea and a touch of sweetness.',
      imagePath: 'assets/images/drinks/drinks 2.jpeg',
      price: 6.44,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavor', price: 1.8),
        Addon(name: 'Mint Leaves', price: 1.6),
        Addon(name: 'Ginger Zest', price: 1.5)
      ],
    ),

    Food(
      name: 'Smoothie',
      description: 'Refreshing smoothie made with real lemons and a touch of sweetness.',
      imagePath: 'assets/images/drinks/drinks 3.jpeg',
      price: 6.44,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavor', price: 1.8),
        Addon(name: 'Mint Leaves', price: 1.6),
        Addon(name: 'Ginger Zest', price: 1.5)
      ],
    ),

    Food(
      name: 'Mojito',
      description: 'Refreshing mojito made with real lemons and a touch of sweetness.',
      imagePath: 'assets/images/drinks/drinks 4.jpeg',
      price: 6.44,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavor', price: 1.8),
        Addon(name: 'Mint Leaves', price: 1.6),
        Addon(name: 'Ginger Zest', price: 1.5)
      ],
    ),

    Food(
      name: 'Caramel Macchiato',
      description: 'Refreshing caramel macchiato made with real lemons and a touch of sweetness.',
      imagePath: 'assets/images/drinks/drinks 5.jpeg',
      price: 6.44,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavor', price: 1.8),
        Addon(name: 'Mint Leaves', price: 1.6),
        Addon(name: 'Ginger Zest', price: 1.5)
      ],
    ),

  ];

  /*

    G E T T E R S

     */

  List<Food> get menu => _menu;

  /*

    O P P E R A T I O N S

     */

  //add to cart

  //remove from the cart

  //get total price of the cart

  //get total number of items in the cart

  //clear cart

  /*

    H E L P E R S

     */

  //generate a receipt

  //format double value into money

  //format list of addons into a string summary

}