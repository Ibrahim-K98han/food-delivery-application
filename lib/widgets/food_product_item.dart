import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_delivery_application/const.dart';
import 'package:food_delivery_application/model/product_model.dart';

class FoodProductItem extends StatelessWidget {
  FoodProductItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 225,
          width: size.width / 2.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
        Container(
          height: 285,
          width: size.width / 2.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.rotate(
                  angle: 10 * pi / 180,
                  child: SizedBox(
                    height: 160,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: kblack.withOpacity(0.3),
                                    spreadRadius: 10,
                                    blurRadius: 30,
                                  )
                                ]),
                          ),
                        ),
                        Image.asset(
                          productModel.image,
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  productModel.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kblack,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          color: kyellow,
                          size: 22,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          productModel.rate.toString(),
                          style: TextStyle(
                            color: kblack.withOpacity(.5),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
