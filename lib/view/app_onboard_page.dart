import 'package:flutter/material.dart';
import 'package:food_delivery_application/consts.dart';
import 'package:food_delivery_application/model/onboard_model.dart';

class AppOnBoardPage extends StatefulWidget {
  const AppOnBoardPage({super.key});

  @override
  State<AppOnBoardPage> createState() => _AppOnBoardPageState();
}

class _AppOnBoardPageState extends State<AppOnBoardPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: onboards.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  //=========== For Image Start =================
                  Positioned(
                    top: -70,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      onboards[index].image,
                      width: 600,
                      height: 600,
                      fit: BoxFit.contain,
                    ),
                  ),
                  //=========== For Image End =================

                  //================= For Text Start =========================
                  Positioned(
                    top: MediaQuery.of(context).size.height / 1.9,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            onboards[index].text1,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            onboards[index].text2,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //================= For Text End =========================
                ],
              );
            },
          ),

          //========================= For White and Grey Container ======================
          Positioned(
            bottom: 150,
            left: 25,
            child: Row(
              children: [
                ...List.generate(
                  onboards.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 250,
                    ),
                    height: 5,
                    width: 50,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )
              ],
            ),
          ),
          //========================= For White and Grey End ======================

          //=========================== Get Started Button Start ======================
          Positioned(
            bottom: 10,
            child: SizedBox(
              height: 75,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  onPressed: () {},
                  color: korange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minWidth: MediaQuery.of(context).size.width - 50,
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //=========================== Get Started Button End ======================
        ],
      ),
    );
  }
}
