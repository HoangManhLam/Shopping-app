// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchBarWidget extends StatelessWidget {
  const HomeSearchBarWidget({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(49, 49, 49, 1),
      ),
      child: SearchBar(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        padding: MaterialStateProperty.all(const EdgeInsets.only(
            left: 16.0, top: 4.0, right: 4.0, bottom: 4.0)),
        elevation: MaterialStateProperty.all(0.0),
        leading: SvgPicture.asset('assets/images/search-icon.svg'),
        hintText: "Tìm kiếm",
        textStyle: MaterialStateProperty.all(const TextStyle(
            color: Color.fromRGBO(152, 152, 152, 1),
            fontSize: 14,
            fontWeight: FontWeight.w400)),
        trailing: <Widget>[
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xFF37474F),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/filter-icon.svg',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}