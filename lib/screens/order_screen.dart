// ignore_for_file: deprecated_member_use, avoid_print

import 'package:coffie/models/coffee_detail_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    final CoffeeDetailData data =
        ModalRoute.of(context)!.settings.arguments as CoffeeDetailData;
    final totalPayment = data.amount + 1.0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 31.0),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/detail',
                arguments: CoffeeDetailData(
                    ratings: data.ratings,
                    pngimageurl: data.pngimageurl,
                    amount: data.amount,
                    index: data.index)),
            child: Container(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/images/caret-left.svg',
                color: Colors.black,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: const Text(
          'Đặt Hàng',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2F2D2C)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              padding: const EdgeInsets.only(
                  left: 30.0, top: 5, right: 30.0, bottom: 0),
              width: w,
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: w,
                        height: 48,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: const Color(0xFF37474F),
                            borderRadius: BorderRadius.circular(14)),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('Deliver button');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 153.50,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF37474F), // Màu nền cho nút Deliver (Dark color)
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  'Deliver',
                                  style: TextStyle(
                                    color: Colors.white, // Màu chữ cho nút Deliver (Light color)
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
// ...
                            GestureDetector(
                              onTap: () {
                                print('Pick Up button');
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 153.50,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF37474F), // Màu nền cho nút Pick Up (Dark color)
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  'Pick Up',
                                  style: TextStyle(
                                    color: Colors.white, // Màu chữ cho nút Pick Up (Light color)
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Địa chỉ giao hàng',
                          style: TextStyle(
                              color: Color(0xFF2F2D2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'Thành Phố Huế',
                          style: TextStyle(
                              color: Color(0xFF303336),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          '60-Hùng Vương-Thành Phố Huế',
                          style: TextStyle(
                              color: Color(0xFF7F7F7F),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                print('edit address button pressed');
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0xFFDEDEDE)),
                                        borderRadius:
                                            BorderRadius.circular(16))),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                        'assets/images/icon-edit.svg'),
                                    const SizedBox(width: 4),
                                    const Text(
                                      'Địa chỉ giao hàng',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF303336)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Add Note button pressed');
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0xFFDEDEDE)),
                                        borderRadius:
                                            BorderRadius.circular(16))),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                        'assets/images/icon-note.svg'),
                                    const SizedBox(width: 4),
                                    const Text(
                                      'Ghi chú',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF303336)),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 0,
                      color: Color(0xFFEAEAEA),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      data.pngimageurl.toString(),
                                    ),
                                  )),
                              width: 54,
                              height: 54,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Áo tay lở',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF2F2D2C)),
                                ),
                                Text(
                                  'Black Fire',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF9B9B9B)),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  print("minus button");
                                },
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  alignment: Alignment.center,
                                  decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: const BorderSide(
                                              width: 1,
                                              color: Color(0xFFEAEAEA)))),
                                  child: SvgPicture.asset(
                                    'assets/images/icon-minus.svg',
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                              ),
                              const Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF2F2D2C)),
                              ),
                              GestureDetector(
                                onTap: () {
                                  print("add button");
                                },
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  alignment: Alignment.center,
                                  decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: const BorderSide(
                                              width: 1,
                                              color: Color(0xFFEAEAEA)))),
                                  child: SvgPicture.asset(
                                    'assets/images/icon-plus.svg',
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 0,
              thickness: 4,
              color: Color(0xFFF4F4F4),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              width: w,
              padding: const EdgeInsets.only(
                  left: 30.0, top: 5, right: 30.0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Discount button clicked');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                color: Color(0xFFEAEAEA),
                              ),
                              borderRadius: BorderRadius.circular(14))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                // Container(
                                //     alignment: Alignment.center,
                                //     child: SvgPicture.asset(
                                //         height: 24,
                                //         width: 24,
                                //         'assets/images/icon-discount.svg')),
                                const SizedBox(width: 12),
                                const Text(
                                  '1 Mã giảm giá',
                                  style: TextStyle(
                                      color: Color(0xFF2E2D2C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                'assets/images/caret-left.svg',
                                color: const Color(0xFF37474F), // Màu icon và mũi tên
                                width: 24,
                                height: 24,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Order',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF37474F), // Màu tiêu đề
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('Giá',
                          style: TextStyle(
                              color: Color(0xFF2E2D2C),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      Text('\$ ${data.amount}',
                          style: const TextStyle(
                              color: Color(0xFF2E2D2C),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Phí giao hàng',
                          style: TextStyle(
                              color: Color(0xFF2E2D2C),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      Row(
                        children: [
                          Text(
                            '\$ 2.0',
                            style: TextStyle(
                              color: Color(0xFF2E2D2C),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '\$ 1.0',
                            style: TextStyle(
                                color: Color(0xFF2E2D2C),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(
                    thickness: 0,
                    color: Color(0xFFEAEAEA),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('Tổng tiền thanh toán',
                          style: TextStyle(
                              color: Color(0xFF2E2D2C),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      Text(
                        '\$ $totalPayment',
                        style: const TextStyle(
                            color: Color(0xFF2E2D2C),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0x3FE4E4E4),
              blurRadius: 24,
              offset: Offset(0, -10),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          height: 125,
          padding:
              const EdgeInsets.only(right: 30, left: 30, top: 16, bottom: 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          // Container(
                          //   alignment: Alignment.center,
                          //   child: SvgPicture.asset(
                          //       'assets/images/icon-cash.svg',
                          //       width: 24,
                          //       height: 24),
                          // ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF37474F),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Text('Cash',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 6, top: 5, right: 14, bottom: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text('\$ $totalPayment',
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF2F2D2C))),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      print('dotted button clicked');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset('assets/images/icon-dots.svg',
                          width: 24, height: 24),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              GestureDetector(
                onTap: () {
                  print('Order button clicked');
                },
                child: Container(

                    alignment: Alignment.center,

                    padding: const EdgeInsets.symmetric(
                        horizontal: 109, vertical: 21),
                    decoration: BoxDecoration(
                        color: const Color(0xFF37474F),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      'Thanh Toán',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
