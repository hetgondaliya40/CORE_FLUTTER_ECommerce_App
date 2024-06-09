import 'dart:developer';

import 'package:ecomme/utills/componets/products.dart';
import 'package:ecomme/utills/gloabls/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utills/componets/category.dart';
import '../../../../utills/product/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    category.insert(0, "All");
    log("Category : $category");
  }

  @override
  Widget build(BuildContext context) {
    TextScaler textScale = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.06,
                ),
                // icon with city
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Icon(Icons.list),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      child: const Icon(CupertinoIcons.profile_circled),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Welcome,",
                          style: TextStyle(
                            fontSize: textScale.scale(25),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Our Fashions App",
                          style: TextStyle(
                            color: const Color(0xff666666),
                            fontSize: textScale.scale(25),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: h * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 2,
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              CupertinoIcons.search,
                              color: Colors.black,
                              size: h * 0.036,
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Text(
                              "Search",
                              style: TextStyle(
                                fontSize: textScale.scale(18),
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 25,
                        child: Icon(
                          Icons.tune,
                          size: h * 0.033,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.22,
                        width: w * 0.75,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(22),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "50% Off",
                                        style: TextStyle(
                                          fontSize: textScale.scale(25),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.0001,
                                      ),
                                      Text(
                                        "On everything today",
                                        style: TextStyle(
                                          fontSize: textScale.scale(16),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Text(
                                        "With code:FSCREATION",
                                        style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: textScale.scale(12),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.02,
                                      ),
                                      Container(
                                        height: h * 0.04,
                                        width: w * 0.25,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Now",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: textScale.scale(15),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Transform.scale(
                                    scaleX: 2.6,
                                    scaleY: 2.7,
                                    child: Image.asset(
                                      "assets/images/home_page/im1.png",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: w * 0.02,
                      ),
                      Container(
                        height: h * 0.22,
                        width: w * 0.75,
                        decoration: BoxDecoration(
                          color: Color(0xffd9d9d9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(22),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "70% Off",
                                        style: TextStyle(
                                          fontSize: textScale.scale(25),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.0001,
                                      ),
                                      Text(
                                        "On everything today",
                                        style: TextStyle(
                                          fontSize: textScale.scale(16),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Text(
                                        "With code:FSCREATION",
                                        style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: textScale.scale(12),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.02,
                                      ),
                                      Container(
                                        height: h * 0.04,
                                        width: w * 0.25,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Get Now",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: textScale.scale(15),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Transform.scale(
                                    scaleX: 3,
                                    scaleY: 3,
                                    child: Image.asset(
                                      "assets/images/home_page/im2.png",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: h * 0.015,
                ),
                // dot

                SizedBox(
                  height: h * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Arrivals",
                      style: TextStyle(
                        fontSize: textScale.scale(22),
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: textScale.scale(16),
                        color: Color(0xff666666),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(),
                SizedBox(
                  height: h * 0.015,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ...category.map(
                        (e) => myCategory(
                          category: e,
                          textScale: textScale,
                          setState: () {
                            setState(() {});
                          },

                          // setState: mySetState,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                if (cat == 'All') ...[
                  Column(
                    children: [
                      ...category.map(
                        (e) => myProduct(context: context, cat: e),
                      ),
                    ],
                  ),
                ] else ...[
                  myProduct(context: context, cat: cat),
                ]
              ],
            ),
          ),
        ),
        bottomNavigationBar: Row(
          children: [
            Container(
              height: h * 0.09,
              width: w,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.cart_page);
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.favPage);
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Icon(
                      Icons.perm_identity_rounded,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
