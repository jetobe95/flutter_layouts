import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Rect rect = Offset.zero & size;
    final x = size.width;
    final y = size.height;
    Path path = Path();
    path.lineTo(0.0, y);
    final firstEndPoint = Offset(x / 2, y - 30.0);
    final firstControlPoint = Offset(x * 0.25, y - 50.0 );

    final secondEndPoint = Offset(x , y - 80.0);
    final secondControlPoint = Offset(x * 0.75, y - 10.0 );

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(x, y);
    


    path.lineTo(x, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
