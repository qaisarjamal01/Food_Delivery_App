import 'package:flutter/cupertino.dart';
import '../models/food.dart';

class MyFoodTile extends StatelessWidget {

  final Food food;
  final Function()? onTap;

  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              //text food details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text(food.price.toString()),
                    Text(food.description)
                  ],
                ),
              ),

              //food image
              Expanded(child: Image.asset(food.imagePath,fit: BoxFit.cover,height: 50,width: 50,))
            ],
          ),
        )
      ],
    );
  }
}
