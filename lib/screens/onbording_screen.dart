import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Positioned(
              child: Container(
                  width: w,
                  height: h,
                  color: const Color.fromARGB(243, 0, 0, 0)),
            ),
            Positioned(
              child: Container(
                  width: w,
                  height: 560,
                  color: Colors.amberAccent,
                  child: const Image(
                    image: AssetImage("assets/images/anhdetails.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                width: w,
                padding: const EdgeInsets.only(
                    top: 52.0, right: 30.0, bottom: 10.0, left: 30.0),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Colors.black],
                )),
                child: Column(
                  children: [
                    const Text(
                      'HaiHoangLam,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    const Text(
                      'Chào mừng quý khách',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    const Text(
                      'đến mua sắm.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Chất lượng mang đến thương hiệu,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(169, 169, 169, 1)),
                    ),
                    const Text(
                      'số 1 Việt Nam.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(169, 169, 169, 1)),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.only(
                                    right: 109,
                                    left: 109,
                                    top: 21,
                                    bottom: 21)),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(198, 124, 78, 1)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(16)))),
                        onPressed: () => Navigator.pushNamed(context, '/home'),
                        child: const Text(
                          'Mua Sắm',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
