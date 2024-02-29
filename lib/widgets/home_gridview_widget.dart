import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/coffee_detail_data.dart';

class HomeGridViewWidget extends StatelessWidget {
  HomeGridViewWidget({
    Key? key,
  }) : super(key: key);

  final List<double> ratings = [4.8, 4.9, 4.5, 4.0,5.0,5.0,4.9,4.9];
  final List<String> pngimageurl = [
    'assets/images/ao1.jpg',
    'assets/images/ao2.webp',
    'assets/images/ao3.jpg',
    'assets/images/ao4.webp',
    'assets/images/ao5.webp',
    'assets/images/ao6.webp',
    'assets/images/ao7.jpg',
    'assets/images/ao8.jpg',
  ];
  final List<double> amount = [4.53, 3.91, 5.53, 4.23,5.5,6.0,5.2,7.1];
  final List<String> productNames = [
    "Áo Hắc Hỏa",
    "Áo bulltysace",
    "Áo zịt cu đơn",
    "Áo Gấu hường",
    "Áo Orwel",
    "Áo Fareww",
    "Áo haha",
    "Áo HEHE"
  ]; // Add product names

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 149 / 250,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        padding: const EdgeInsets.all(0.0),
        itemCount: productNames.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xFF37474F), // Border color
              width: 2.0, // Border width
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: AssetImage(
                                  pngimageurl[index].toString(),
                                ),
                                fit: BoxFit.cover)),
                        width: 141,
                        height: 132,
                      ),
                    ),
                    Container(
                        width: 51,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1599999964237213),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            )),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset('assets/images/star-icon.svg'),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              ratings[index].toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productNames[index], // Use product names
                      style: const TextStyle(
                          color: Color(0xFF37474F),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "Description", // Replace with actual description
                      style: TextStyle(
                          color: Color(0xFF37474F),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${amount[index].toString()}",
                          style: const TextStyle(
                              color: Color(0xFF2F4B4E),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: const Color(0xFF37474F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () => Navigator.pushNamed(
                              context,
                              '/detail',
                              arguments: CoffeeDetailData(
                                ratings: ratings[index],
                                pngimageurl: pngimageurl[index],
                                amount: amount[index],
                                index: index,
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/images/add-icon.svg',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
