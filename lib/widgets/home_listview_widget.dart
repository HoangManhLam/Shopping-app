import 'package:flutter/material.dart';

class HomeListViewWidget extends StatelessWidget {
  const HomeListViewWidget({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: 38,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                color: const Color(0xFF37474F),
                borderRadius: BorderRadius.circular(12)),
            // Cappuccino
            child: const Text("Áo",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            // Machiato
            child: const Text("Quần",
                style: TextStyle(
                    color: Color(0xFF2F4B4E),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            // Latte
            child: const Text("Giày",
                style: TextStyle(
                    color: Color(0xFF2F4B4E),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            // Americano
            child: const Text("Phụ kiện",
                style: TextStyle(
                    color: Color(0xFF2F4B4E),
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}
