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
      body: Obx(() => controller.isApiCalling.value
          ? Center(
              child: Text(
              Strings.loading,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ))
          : Column(
              children: [
                const SizedBox(height: 20),
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
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Asset Value",
                        style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "\u{20B9} ${controller.assetSumFormatted}",
                        style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        color: colorWhite,
                        thickness: 0.8,
                      ),
                      const SizedBox(height: 10),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "\u{20B9} ${controller.liabilitySumFormatted}",
                                  style: TextStyle(
                                      color: colorWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "\u{20B9} ${controller.networthSumFormatted}",
                                    style: TextStyle(
                                        color: colorWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
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
                      borderRadius: BorderRadius.circular(26),
                      color: colorWhite,
                    ),
                    child: Padding(
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
                          const SizedBox(height: 20),
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
                          Divider(thickness: 0.5, color: colorBlack)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
    );
  }
}
