import 'package:coffie/widgets/bottomnav_widget.dart';
import 'package:coffie/widgets/home_gridview_widget.dart';
import 'package:coffie/widgets/home_header_widget.dart';
import 'package:coffie/widgets/home_listview_widget.dart';
import 'package:coffie/widgets/home_promocontainer_widget.dart';
import 'package:coffie/widgets/home_searchbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: const BottomNavWidget(),
      backgroundColor: const Color(0xFF262626), // Change background color
      body: Stack(
        children: <Widget>[
          Container(
            height: 280,
            width: w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [const Color(0xFF333333), const Color(0xFF334155)], // Change gradient colors
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  const HomeHeaderWidget(),

                  // Searchbar
                  HomeSearchBarWidget(w: w),

                  const SizedBox(
                    height: 20,
                  ),

                  // promo container
                  PromoContainerWidget(w: w),

                  const SizedBox(
                    height: 24,
                  ),

                  // Listview
                  HomeListViewWidget(w: w),

                  const SizedBox(
                    height: 24,
                  ),

                  // Gridview
                  HomeGridViewWidget(),

                  // Bottomappbar
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
