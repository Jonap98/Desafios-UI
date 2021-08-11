import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final Widget child;

  const Footer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.65,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 120.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
