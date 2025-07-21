import 'package:flutter/material.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                //text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text('\$${food.price}',style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                      SizedBox(height: 10),
                      Text(food.description,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary))
                    ],
                  ),
                ),

                SizedBox(width: 15),

                //food image
                Expanded(child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(8),
                    child: Image.asset(food.imagePath,height: 120,fit: BoxFit.cover,)))
              ],
            ),
          ),
        ),

        //divider line
        Divider(color: Theme.of(context).colorScheme.tertiary,indent: 25,endIndent: 25)
      ],
    );
  }
}
