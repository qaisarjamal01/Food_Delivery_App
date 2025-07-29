import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/cart_page.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class MySliverAppBar extends StatelessWidget {

  final Widget child;
  final Widget title;

  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120.0,
      floating: false,
      pinned: true,
      actions: [
        Stack(
          children: [
            //Cart Button
            IconButton(onPressed: (){
              //go to cart page
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
            }, icon: Icon(Icons.shopping_cart)),

            //bag counts
            Positioned(
              right: 4,
              top: 4,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '${context.watch<CartProvider>().itemCount}',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('Sunset Dinner'),centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0,right: 0,top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}