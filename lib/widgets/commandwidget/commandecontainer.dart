import 'package:flutter/material.dart';

class CommandContainer extends StatelessWidget {
  const CommandContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1.5,
          color: Color(
            0xfff4f4f6,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                'assets/images/imageCommande.png',
                height: 88,
                width: 88,
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
                      'Pizza jambon',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(
                          0xff121826,
                        ),
                      ),
                    ),
                    Text(
                      'Mozzarella, Escalope, Coulis de tomates, Huile d\'olive, Burrata,...',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xff6c727f,
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
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color(0xfff26129)),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 18.67,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xfffeefea,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
