import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: const Offset(5, 5),
              spreadRadius: 1,
              blurRadius: 10,
              color: Colors.grey.shade600),
          const BoxShadow(
            offset: Offset(-5, -5),
            spreadRadius: 1,
            blurRadius: 10,
            color: Colors.white,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade300,
      ),
      child: child,
    );
  }
}
