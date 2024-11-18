import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_application/const.dart';
import 'package:food_delivery_application/model/product_model.dart';
import 'package:food_delivery_application/widgets/food_product_item.dart';

import '../model/category_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Your Location',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: kblack,
                              size: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: korange,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Dhaka, Bangladesh',
                              style: TextStyle(
                                fontSize: 16,
                                color: kblack,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.search,
                          color: kblack,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              color: kblack,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: const Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Let\'s finds the best food around you',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: kblack,
                  letterSpacing: -.4,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Find by Category',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: kblack,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: korange,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            selectedIndex = index;
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 105,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: selectedIndex == index
                                ? Border.all(width: 2.5, color: korange)
                                : Border.all(
                                    color: Colors.white,
                                  ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 47,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: kblack.withOpacity(0.4),
                                            offset: const Offset(0, 10),
                                            blurRadius: 12,
                                            spreadRadius: 5,
                                          )
                                        ]),
                                  ),
                                  Image.asset(
                                    category[index].image,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                category[index].name,
                                style: const TextStyle(
                                  color: kblack,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Result (${'We make it later dynamic'})',
                style: TextStyle(
                  color: kblack.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  letterSpacing: -.2,
                ),
              ),
            ),
            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...List.generate(
                    productModel.length,
                    (index) => Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 25, right: 25)
                          : const EdgeInsets.only(right: 25),
                      child: FoodProductItem(
                        productModel: productModel[index],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
