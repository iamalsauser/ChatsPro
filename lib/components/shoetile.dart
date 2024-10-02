import 'package:flutter/material.dart';
import 'package:chatspro/models/shoe.dart';

class Shoetile extends StatefulWidget {
  Shoe shoe;
  Shoetile({super.key, required this.shoe});

  @override
  State<Shoetile> createState() => _ShoetileState();
}

class _ShoetileState extends State<Shoetile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(widget.shoe.imagePath),
          ),
          // Image.asset('lib/images/shoe_1.png'),
          // description
          Text(
            widget.shoe.description,
            style: TextStyle(color: Colors.grey),
          ),
          // price+detail

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // shoe name
                  children: [
                    Text(
                      widget.shoe.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$' + widget.shoe.price,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],

                  // price
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
                // plus button
              ],
            ),
          )
          // button to add to cart
        ],
      ),
    );
  }
}
