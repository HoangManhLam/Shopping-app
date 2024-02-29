// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/images/Home.svg",
                    color: const Color(0xFF37474F),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: 5,
                    width: 10,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(-0.98, -0.17),
                          end: Alignment(0.98, 0.17),
                          colors: [Color(0xFF37474F), Color(0xFF37474F)],
                        ),
                        borderRadius: BorderRadius.circular(18)))
              ],
            ),
            // Column(
            //   children: [
            //     GestureDetector(
            //       onTap: () {},
            //       child: SvgPicture.asset(
            //         "assets/images/Heart.svg",
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //     Container(
            //         height: 5,
            //         width: 10,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(18)))
            //   ],
            // ),
            // Column(
            //   children: [
            //     GestureDetector(
            //       onTap: () {},
            //       child: SvgPicture.asset(
            //         "assets/images/Bag.svg",
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 5,
            //     ),
            //     Container(
            //         height: 5,
            //         width: 10,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(18)))
            //   ],
            // ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/images/Notification.svg",
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    height: 5,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
