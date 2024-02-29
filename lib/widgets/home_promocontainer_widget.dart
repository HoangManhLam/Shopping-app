import 'package:flutter/material.dart';

class PromoContainerWidget extends StatelessWidget {
  const PromoContainerWidget({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 140,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/anhngang.jpg"), fit: BoxFit.cover),
          color: const Color(0xFFEAE7E7),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                      color: const Color(0xFFEC5050),
                      borderRadius: BorderRadius.circular(8)),
                  // Promo
                  child: const Text(
                    "Khuyến mãi Tết 2024",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 27,
                  decoration: const BoxDecoration(color: Color(0xFF1C1C1C)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 170,
                  height: 20,
                  decoration: const BoxDecoration(color: Color(0xFF1C1C1C)),
                ),
              ],
            ),
            // Buy one get one FREE
            const Positioned(
              top: 27,
              child: SizedBox(
                  width: 203,
                  child: Text(
                    "Giảm 50% thầy Dũng",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
