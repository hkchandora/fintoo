import 'package:fintoo/core/constants/colors.dart';
import 'package:fintoo/core/constants/strings.dart';
import 'package:fintoo/module/home/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Advisory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Investment',
          ),
        ],
      ),
      body: Obx(() => controller.isApiCalling.value
          ? Center(
              child: Text(
              Strings.loading,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ))
          : Column(
              children: [
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge,
                    children: [
                      TextSpan(
                          text: "Summary | ",
                          style: TextStyle(
                              color: colorWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'Plan of Action',
                          style: TextStyle(
                              color: colorTextBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Assets Value",
                        style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.w900,
                            fontSize: 18),
                      ),
                      Text(
                        "\u{20B9} ${controller.assetSumFormatted}",
                        style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                      ),
                      const SizedBox(height: 4),
                      Divider(
                        color: colorWhite,
                        thickness: 0.8,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Liabilities",
                                  style: TextStyle(
                                      color: colorBlack,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18),
                                ),
                                Text(
                                  "\u{20B9} ${controller.liabilitySumFormatted}",
                                  style: TextStyle(
                                      color: colorWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                              ],
                            ),
                          ),
                          Text("|",
                              style:
                                  TextStyle(fontSize: 24, color: colorWhite)),
                          Expanded(
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Net Worth",
                                    style: TextStyle(
                                        color: colorBlack,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "\u{20B9} ${controller.networthSumFormatted}",
                                    style: TextStyle(
                                        color: colorWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                      color: colorWhite,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Manage & View Report",
                                  style: TextStyle(
                                      color: colorGreen,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 22),
                                ),
                                const SizedBox(height: 14),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: colorBlue,
                                                  width: 2.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(6),
                                              child: Icon(
                                                Icons.edit,
                                                color: colorBlue,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            "Edit Data",
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: colorBlue,
                                                  width: 2.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(6),
                                              child: Icon(
                                                Icons.visibility,
                                                color: colorBlue,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            "View report",
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: colorBlue,
                                                  width: 2.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(6),
                                              child: Icon(
                                                Icons.arrow_downward_sharp,
                                                color: colorBlue,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            "Download Report",
                                            style: TextStyle(
                                                color: colorBlack,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 14),
                                Divider(thickness: 0.5, color: colorBlack),
                                const SizedBox(height: 14),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        const Row(
                                          children: [
                                            Text("Your Score"),
                                            Icon(Icons.info_outline),
                                          ],
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            children: [
                                              TextSpan(
                                                  text: "91",
                                                  style: TextStyle(
                                                      color: colorTextBlack,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold)),
                                              TextSpan(
                                                  text: "|",
                                                  style: TextStyle(
                                                      color: colorTextBlack,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold)),
                                              TextSpan(
                                                  text: '100',
                                                  style: TextStyle(
                                                      color: colorTextBlack,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: colorBlue,
                            width: Get.width,
                            padding: const EdgeInsets.all(20),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  commonCard("Seamless Investment", "assets/investment.png"),
                                  commonCard("शिक्षा", "assets/shiksha.png"),
                                  commonCard("Calculator", "assets/calculator.png"),
                                  commonCard("Seamless Investment", "assets/investment.png"),
                                  commonCard("शिक्षा", "assets/shiksha.png"),
                                  commonCard("Calculator", "assets/calculator.png"),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            margin: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: colorBlue,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("GET YOUR", style: TextStyle(color: colorWhite, fontSize: 16),),
                                      const SizedBox(height: 2),
                                      Text("PORTFOLIO ANALYSIS", style: TextStyle(color: colorWhite, fontSize: 16, fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 2),
                                      Row(
                                        children: [
                                          Text("REPORT", style: TextStyle(color: colorDarkBlue, fontSize: 16, fontWeight: FontWeight.bold),),
                                          const SizedBox(width: 20),
                                          Icon(Icons.arrow_circle_right_rounded, size: 18, color: colorDarkBlue,)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset("assets/analysis.png", width: 140, height: 100, fit: BoxFit.fill,)
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          goalTile("Retirement Goal", "7.10 Cr"),
                          goalTile("Daughter Marriage", "49.12 L"),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: colorGrey,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: const Text("Show More"),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: colorGrey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              color: colorWhite,
                            ),
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(20),
                            width: Get.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Life Insurance", style: TextStyle(color: colorDarkBlue, fontSize: 20, fontWeight: FontWeight.bold),),
                                Text("\u{20B9}2.3Cr", style: TextStyle(color: colorDarkBlue, fontSize: 26, fontWeight: FontWeight.bold),),
                                Divider(thickness: 1, color: colorGrey,),
                                Text("Medical Cover", style: TextStyle(color: colorDarkBlue, fontSize: 20, fontWeight: FontWeight.bold),),
                                Text("\u{20B9}15.0L", style: TextStyle(color: colorDarkBlue, fontSize: 26, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0,20,20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: colorLightGrey,
                                    ),
                                    padding: const EdgeInsets.fromLTRB(10,20,10,10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Make Your", style: TextStyle(color: colorGrey, fontWeight: FontWeight.bold),),
                                        const SizedBox(height: 8),
                                        Text("Tax Planning Easy", style: TextStyle(color: colorDarkBlue, fontWeight: FontWeight.bold, fontSize: 20),),
                                        const SizedBox(height: 8),
                                        Align(alignment: Alignment.bottomRight ,child: Icon(Icons.arrow_circle_right, color: colorDarkBlue,)),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: colorLightGrey,
                                    ),
                                    padding: const EdgeInsets.fromLTRB(10,30,10,20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Get the Free", style: TextStyle(color: colorGrey, fontWeight: FontWeight.bold),),
                                        const SizedBox(height: 8),
                                        Text("CIBIL Score", style: TextStyle(color: colorDarkBlue, fontWeight: FontWeight.bold, fontSize: 20),),
                                        const SizedBox(height: 8),
                                        Text("Coming soon", style: TextStyle(color: colorDarkBlue, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
    );
  }

  Widget commonCard(String title, String imagePath){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: colorWhite,
      ),
      width: 90,
      height: 128,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, width: 34, height: 34, fit: BoxFit.fill,),
          const SizedBox(height: 16),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

  Widget goalTile(String title, String amount){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: colorBlue,width: 2),
                borderRadius: BorderRadius.circular(20),
                color: colorWhite,
              ),
              padding: const EdgeInsets.all(6),
              child: Image.asset("assets/doc.png", width: 20, height: 20, fit: BoxFit.fill,),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 18),),
                const Text("100% of Goal Value.", style: TextStyle(fontSize: 12),),
                Divider(thickness: 4, color: colorGreen, endIndent: 10,),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("\u{20B9} $amount"),
                const Text("(Super)"),
              ],
            ),
          ],
        ),
      );
  }
}
