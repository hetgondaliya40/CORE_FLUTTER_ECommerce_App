import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../utills/product/products.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailsPage> {
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> pro =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          isLike = !isLike;
                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black12,
                          child: (isLike)
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.black45,
                                )
                              : const Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Image.network(
                      pro['image'],
                      height: h * 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffe6eced),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pro['title'],
                      style: TextStyle(
                        fontSize: textScaler.scale(25),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Text(
                      "Category : ${pro['category'].toString()}",
                      style: TextStyle(
                        fontSize: textScaler.scale(18),
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Text(
                      "Stock :    ${pro['stock'].toString()}",
                      style: TextStyle(
                        fontSize: textScaler.scale(20),
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      "Description  :-  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: textScaler.scale(20),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Text(
                      pro['description'].toString(),
                      style: TextStyle(
                        fontSize: textScaler.scale(15),
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price :\n\$${pro['price'].toString()}",
                          style: TextStyle(
                            fontSize: textScaler.scale(20),
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (!cartList.contains(pro)) {
                              cartList.add(pro);
                            }
                            log("Cart : $cartList");
                          },
                          child: Container(
                            height: h * 0.06,
                            width: w * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "🛒 Add Item  ",
                                  style: TextStyle(
                                      fontSize: textScaler.scale(23),
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
