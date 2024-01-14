import 'package:flutter/material.dart';
import 'package:stage_project/view/mainScreens/shopscreen.dart';
import 'package:stage_project/widgets/text/text4.dart';
import 'package:stage_project/widgets/text/text9.dart';

import 'bottommodel.dart';

class PointedRectangularContainer extends StatefulWidget {
  @override
  State<PointedRectangularContainer> createState() =>
      _PointedRectangularContainerState();
}

class _PointedRectangularContainerState
    extends State<PointedRectangularContainer> {
  void _showConfirmationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => RefuserBottomSheet(
        onDelete: () {
          // Perform the delete operation here
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.96,
      width: MediaQuery.of(context).size.width,
      color: Color(0xfff7f9fb),
      child: CustomPaint(
        painter: TrianglePainter(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text4(text: 'Paiement'),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text9(text: 'Sous-totale'),
                  ),
                  Text(
                    '16.500dt',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(
                        0xff03041d,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text9(text: 'Frais de livraison'),
                  ),
                  Text(
                    '2.500dt',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(
                        0xff03041d,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                height: 1,
                thickness: 2,
                color: Color(0xffbbc0c6),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text9(text: 'Total'),
                  ),
                  Text(
                    '19.000dt',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(
                        0xfff26129,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showConfirmationBottomSheet(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 56,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFEEEE),
                        border: Border.all(
                          color: Color(0xFFFFEEEE),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Refuser',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFE0574E),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopScreen(
                            initialIndex: 1,
                            currentIndex: 1,
                          ),
                        ),
                        (route) =>
                            false, // Remove all the routes on top of the new route
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 56,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFf26129),
                        border: Border.all(
                          color: Color(0xFFFFEEEE),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Accepter',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Color(0xfff7f9fb);
    final triangleWidth = 10.0; // Width of each triangle
    final triangleHeight = 10.0; // Height of each triangle

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(triangleWidth / 2, -triangleHeight)
      ..lineTo(triangleWidth, 0)
      ..close();

    final totalTriangles = size.width ~/ triangleWidth;

    for (int i = 0; i < totalTriangles; i++) {
      final offsetX = i * triangleWidth;
      canvas.drawPath(path.shift(Offset(offsetX, 0)), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
