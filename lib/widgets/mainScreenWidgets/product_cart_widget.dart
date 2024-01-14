import 'package:flutter/material.dart';

class ProductCartWidget extends StatelessWidget {
  //final IconData icon;
  final String description;
  final double price;
  final String commande;
  final ImageProvider<Object> image;

  const ProductCartWidget({
    //required this.icon,
    required this.description,
    required this.price,
    required this.commande,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF323F4B),
                        ),
                      ),
                    ),
                    Text(
                      commande,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFD683E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '\$${price.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF26129),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      'Commander 56x',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7B8794),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: Divider(
              thickness: 2,
              color: Color(0xFFF5F7FA),
            ),
          ),
        ],
      ),
    );
  }
}
