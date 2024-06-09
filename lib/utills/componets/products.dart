import 'dart:developer';

import 'package:ecomme/utills/gloabls/routes.dart';
import 'package:ecomme/utills/product/products.dart';
import 'package:flutter/material.dart';

Widget myProduct({required BuildContext context, required String cat}) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;
  TextScaler textScale = MediaQuery.textScalerOf(context);
  log("CATEGORY: $cat");
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        ...products.map(
          (e) => (cat == e['category'])
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.detail_page,
                          arguments: e);
                    },
                    child: Column(
                      children: [
                        Container(
                          height: h * 0.22,
                          width: w * 0.43,
                          decoration: BoxDecoration(
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(
                                e['image'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          e['title'].toString().split(" ")[0],
                          style: TextStyle(
                            fontSize: textScale.scale(16),
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          e['category'],
                          style: TextStyle(
                            fontSize: textScale.scale(13),
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff666666),
                          ),
                        ),
                        Text(
                          e['price'].toString(),
                          style: TextStyle(
                            fontSize: textScale.scale(16),
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
        )
      ],
    ),
  );
}
