import 'package:chatspro/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:chatspro/components/shoetile.dart';
import 'package:chatspro/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // search bar
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                // message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    "Never Shy Never Sorry",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                // sneakers (hot picks)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Sneakers",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "see all",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),

                // List of shoes
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getShoeList().length,
                    scrollDirection:
                        Axis.horizontal, // Specify the number of items
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      return Shoetile(
                        shoe: shoe,
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
                  child: Divider(
                    color: Colors.transparent,
                  ),
                )
              ],
            ));
  }
}
