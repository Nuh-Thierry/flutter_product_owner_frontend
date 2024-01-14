import 'package:flutter/material.dart';

import 'ajouterProduit.dart';

class AjouterProduitContainer extends StatelessWidget {
  final String text;

  const AjouterProduitContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            'assets/images/imageCommande.png',
            height: 48,
            width: 48,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8,
              bottom: 8,
              top: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xff121826,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff121826),
                    ),
                    children: [
                      TextSpan(
                        text: '7',
                        style: TextStyle(
                          color: Color(0xff121826),
                        ),
                      ),
                      TextSpan(
                        text: '.500dt',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(
                            0xffa0a3a8,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AjouterProduit(),
              ),
            );
          },
          child: Container(
            height: 48,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfffeefea)),
            child: Center(
              child: Text(
                'Ajouter',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xfff26129,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
