// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:carbazaar/Controller/filtercontroller.dart';
import 'package:carbazaar/View/postscreen.dart';
import 'package:flutter/material.dart';
import '../const/global.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final controller = Get.put(Filtercontroller());
  List year = [
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
    "2023",
  ];
  List Brand = [
    "BMW",
    "AUDI",
    "PORSCHE",
    "FORD",
    "LAMBORGHINI",
    "FERRARI",
    "Kia Rio",
    "jbzxc",
    "ka",
    "kjhd",
  ];
  List carmodel = [
    "A3",
    "A6",
    "Continental GT",
    "Q8",
    "Cullinan",
    "FERRARI",
    "Kia Rio",
    "JD",
    "kjBKD",
    "NDBk"
  ];
  List color = [
    "Tail",
    "Gray",
    "yellow",
    "Green",
    "Light blue",
    "White",
    "Red",
    "Black",
    "Blue"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<Filtercontroller>(
          builder: (controller) => SizedBox(
            height: MediaQuery.of(context).size.height,
            child: controller.loading == true
                ? SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 35,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height - 130,
                                  child: ListView.builder(
                                    itemCount:
                                        controller.res.length, // Onepost.data.length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Post(
                                            controller.res[index].companyImage,
                                            controller.res[index].company,
                                            controller.res[index].image,
                                            controller.res[index]
                                                .pricPerDay
                                                .toString(),
                                            controller.res[index].model,
                                            controller.res[index].year.toString(),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          index == (controller.res.length - 1)
                                              ? Container()
                                              : Divider(
                                                  color: Colors.grey.shade900,
                                                  thickness: 2,
                                                )
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          (controller.choose == 1 || controller.choose == 2)
                              ? InkWell(
                                  onTap: () {
                                    controller.getchoose(0);
                                  },
                                  child: Container(
                                    color: Colors.black.withOpacity(0.85),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                      Container(
                        child: controller.choose == 1
                            ? SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.075,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15),
                                            child: Column(
                                              children: [
                                                InkWell(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .all(Colors
                                                              .transparent),
                                                  onTap: () {
                                                    if (controller.down_up ==
                                                        false) {
                                                      controller
                                                          .getdown_up(true);
                                                    } else {
                                                      controller
                                                          .getdown_up(false);
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Year",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              "OpenSans",
                                                          fontFamilyFallback: [
                                                            "Bold"
                                                          ],
                                                        ),
                                                      ),
                                                      controller.down_up ==
                                                              false
                                                          ? const Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              size: 20,
                                                            )
                                                          : const Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_rounded,
                                                              size: 20,
                                                            )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                controller.down_up == true
                                                    ? SizedBox(
                                                        height: 30,
                                                        child:
                                                            ListView.builder(
                                                          shrinkWrap: true,
                                                          itemCount:
                                                              year.length,
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemBuilder:
                                                              (context,
                                                                  index) {
                                                            return InkWell(
                                                              overlayColor:
                                                                  MaterialStateProperty
                                                                      .all(Colors
                                                                          .transparent),
                                                              onTap: () {
                                                                controller
                                                                    .getyear(
                                                                        index);
                                                              },
                                                              child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          8),
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            60,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: controller.year == index
                                                                              ? Global.primary
                                                                              : Colors.white,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          border:
                                                                              Border.all(
                                                                            color: controller.year != index ? Colors.black : Colors.white,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Text(
                                                                            year[index],
                                                                            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  )),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15),
                                            child: Column(
                                              children: [
                                                InkWell(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .all(Colors
                                                              .transparent),
                                                  onTap: () {
                                                    if (controller.loading ==
                                                        false) {
                                                      controller
                                                          .getdown_up1(true);
                                                    } else {
                                                      controller
                                                          .getdown_up1(false);
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Brand",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              "OpenSans",
                                                          fontFamilyFallback: [
                                                            "Bold"
                                                          ],
                                                        ),
                                                      ),
                                                      controller.down_up1 ==
                                                              false
                                                          ? const Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              size: 20,
                                                            )
                                                          : const Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_rounded,
                                                              size: 20,
                                                            )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                controller.down_up1 == true
                                                    ? SizedBox(
                                                        height: 30,
                                                        child:
                                                            ListView.builder(
                                                          shrinkWrap: true,
                                                          itemCount:
                                                              Brand.length,
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemBuilder:
                                                              (context,
                                                                  index) {
                                                            return InkWell(
                                                              overlayColor:
                                                                  MaterialStateProperty
                                                                      .all(Colors
                                                                          .transparent),
                                                              onTap: () {
                                                                controller
                                                                    .getbrand(
                                                                        index);
                                                              },
                                                              child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          8),
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        //width: 60,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: controller.brand == index
                                                                              ? Global.primary
                                                                              : Colors.white,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          border:
                                                                              Border.all(
                                                                            color: controller.brand != index ? Colors.black : Colors.white,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(horizontal: 12),
                                                                          child:
                                                                              Center(
                                                                            child: Text(
                                                                              Brand[index],
                                                                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  )),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15),
                                            child: Column(
                                              children: [
                                                InkWell(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .all(Colors
                                                              .transparent),
                                                  onTap: () {
                                                    if (controller.down_up2 ==
                                                        false) {
                                                      controller
                                                          .getdown_up2(true);
                                                    } else {
                                                      controller
                                                          .getdown_up2(false);
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Car Model",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              "OpenSans",
                                                          fontFamilyFallback: [
                                                            "Bold"
                                                          ],
                                                        ),
                                                      ),
                                                      controller.down_up2 ==
                                                              false
                                                          ? const Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              size: 20,
                                                            )
                                                          : const Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_rounded,
                                                              size: 20,
                                                            )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                controller.down_up2 == true
                                                    ? SizedBox(
                                                        height: 30,
                                                        child:
                                                            ListView.builder(
                                                          shrinkWrap: true,
                                                          itemCount:
                                                              carmodel.length,
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemBuilder:
                                                              (context,
                                                                  index) {
                                                            return InkWell(
                                                              overlayColor:
                                                                  MaterialStateProperty
                                                                      .all(Colors
                                                                          .transparent),
                                                              onTap: () {
                                                                controller
                                                                    .getcarmodel(
                                                                        index);
                                                              },
                                                              child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          8),
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: controller.carmodel == index
                                                                              ? Global.primary
                                                                              : Colors.white,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          border:
                                                                              Border.all(
                                                                            color: controller.carmodel != index ? Colors.black : Colors.white,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(horizontal: 12),
                                                                          child:
                                                                              Center(
                                                                            child: Text(
                                                                              carmodel[index],
                                                                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  )),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15),
                                            child: Column(
                                              children: [
                                                InkWell(
                                                  overlayColor:
                                                      MaterialStateProperty
                                                          .all(Colors
                                                              .transparent),
                                                  onTap: () {
                                                    if (controller.down_up3 ==
                                                        false) {
                                                      controller
                                                          .getdown_up3(true);
                                                    } else {
                                                      controller
                                                          .getdown_up3(false);
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Color",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              "OpenSans",
                                                          fontFamilyFallback: [
                                                            "Bold"
                                                          ],
                                                        ),
                                                      ),
                                                      controller.down_up3 ==
                                                              false
                                                          ? const Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              size: 20,
                                                            )
                                                          : const Icon(
                                                              Icons
                                                                  .keyboard_arrow_up_rounded,
                                                              size: 20,
                                                            )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                controller.down_up3 == true
                                                    ? SizedBox(
                                                        height: 30,
                                                        child:
                                                            ListView.builder(
                                                          shrinkWrap: true,
                                                          itemCount:
                                                              color.length,
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemBuilder:
                                                              (context,
                                                                  index) {
                                                            return InkWell(
                                                              overlayColor:
                                                                  MaterialStateProperty
                                                                      .all(Colors
                                                                          .transparent),
                                                              onTap: () {
                                                                controller
                                                                    .getcolor(
                                                                        index);
                                                              },
                                                              child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          8),
                                                                  child: Row(
                                                                    children: [
                                                                      Container(
                                                                        //width: 60,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: controller.color == index
                                                                              ? Global.primary
                                                                              : Colors.white,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          border:
                                                                              Border.all(
                                                                            color: controller.color != index ? Colors.black : Colors.white,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.symmetric(horizontal: 12),
                                                                          child:
                                                                              Center(
                                                                            child: Text(
                                                                              color[index],
                                                                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  )),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets
                                                        .symmetric(
                                                    horizontal: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "100 AED",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            "OpenSans",
                                                        fontFamilyFallback: [
                                                          "Bold"
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      "3000 AED",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            "OpenSans",
                                                        fontFamilyFallback: [
                                                          "Bold"
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SliderTheme(
                                                data: SliderThemeData(
                                                  thumbColor: Global.primary,
                                                  thumbShape:
                                                      const RoundSliderThumbShape(
                                                    enabledThumbRadius: 15,
                                                  ),
                                                  activeTrackColor:
                                                      Colors.grey.shade800,
                                                  inactiveTrackColor:
                                                      Colors.grey,
                                                  trackHeight: 1,
                                                ),
                                                child: Slider(
                                                  label:
                                                      "${controller.currentRangeValues.round()}ADM",
                                                  min: 100,
                                                  max: 3000,
                                                  divisions: 29,
                                                  value: controller
                                                      .currentRangeValues,
                                                  onChanged: ((val) {
                                                    controller.getrange(val);
                                                  }),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 55,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 6,
                                              offset: const Offset(0, -2.5),
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              overlayColor:
                                                  MaterialStateProperty.all(
                                                      Colors.transparent),
                                              onTap: () async {
                                                controller.getv(0);
                                                controller.getchoose(0);
                                                await controller.getfilter(
                                                  controller.year == null
                                                      ? "%"
                                                      : year[controller.year!],
                                                  controller.brand == null
                                                      ? "%"
                                                      : Brand[
                                                          controller.brand!],
                                                  controller.carmodel == null
                                                      ? "%"
                                                      : carmodel[
                                                          controller.carmodel!],
                                                  controller.color == null
                                                      ? "%"
                                                      : color[
                                                          controller.color!],
                                                  controller.currentRangeValues ==
                                                          100
                                                      ? "999999999999"
                                                      : controller
                                                          .currentRangeValues
                                                          .toString(),
                                                  "DESC",
                                                );

                                               controller.res;
                                              },
                                              child: Container(
                                                width: 83,
                                                height: 36,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  color: Global.primary,
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    "Done",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              overlayColor:
                                                  MaterialStateProperty.all(
                                                      Colors.transparent),
                                              onTap: () async {
                                                controller.year = null;
                                                controller.brand = null;
                                                controller.carmodel = null;
                                                controller.color = null;
                                                controller.currentRangeValues =
                                                    100;
                                                controller.getv(0);
                                                controller.getchoose(0);
                                                controller.getdown_up(false);
                                                controller.getdown_up1(false);
                                                controller.getdown_up2(false);
                                                controller.getdown_up3(false);
                                                await controller.deletbutton(
                                                    "%",
                                                    "%",
                                                    "%",
                                                    "%",
                                                    "9999999999999",
                                                    "DESC");
                                                controller.res;
                                              },
                                              child: const Icon(
                                                Icons.delete_outline_rounded,
                                                size: 28,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                      ),
                      Container(
                        child: controller.choose == 2
                            ? Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                    InkWell(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                      onTap: () async {
                                        controller.getv(0);
                                        controller.getchoose(0);
                                        await controller.price(
                                          controller.year == null
                                              ? "%"
                                              : year[controller.year!],
                                          controller.brand == null
                                              ? "%"
                                              : Brand[controller.brand!],
                                          controller.carmodel == null
                                              ? "%"
                                              : carmodel[controller.carmodel!],
                                          controller.color == null
                                              ? "%"
                                              : color[controller.color!],
                                          controller.currentRangeValues == 100
                                              ? "999999999999"
                                              : controller.currentRangeValues
                                                  .toString(),
                                          "DESC",
                                        );

                                       controller.res;
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: controller.v == 0
                                                ? const Color(0x44eeeeee)
                                                : Colors.white),
                                        child: Center(
                                          child: Text(
                                            "Price High To Low",
                                            style: TextStyle(
                                              color: controller.v == 0
                                                  ? Global.primary
                                                  : Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "OpenSans",
                                              fontFamilyFallback: const ["Regular"],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                      onTap: () async {
                                        controller.getv(1);
                                        controller.getchoose(0);
                                        await controller.price(
                                          controller.year == null
                                              ? "%"
                                              : year[controller.year!],
                                          controller.brand == null
                                              ? "%"
                                              : Brand[controller.brand!],
                                          controller.carmodel == null
                                              ? "%"
                                              : carmodel[controller.carmodel!],
                                          controller.color == null
                                              ? "%"
                                              : color[controller.color!],
                                          controller.currentRangeValues == 100
                                              ? "999999999999"
                                              : controller.currentRangeValues
                                                  .toString(),
                                          "ASC",
                                        );

                                        controller.res;
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: controller.v == 1
                                                ? const Color(0x44eeeeee)
                                                : Colors.white),
                                        child: Center(
                                          child: Text(
                                            "Price Low To High",
                                            style: TextStyle(
                                              color: controller.v == 1
                                                  ? Global.primary
                                                  : Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "OpenSans",
                                              fontFamilyFallback: const ["Regular"],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(0, 2),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const InkWell(
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    onTap: () {
                                      if (controller.choose == 0) {
                                        controller.getchoose(1);
                                      } else if (controller.choose == 2) {
                                        controller.getchoose(1);
                                      } else {
                                        controller.getchoose(0);
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.tune_rounded,
                                          color: controller.choose == 1
                                              ? Global.primary
                                              : Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Filter",
                                          style: TextStyle(
                                            color: controller.choose == 1
                                                ? Global.primary
                                                : Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 20,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    onTap: () {
                                      if (controller.choose == 0) {
                                        controller.getchoose(2);
                                      } else if (controller.choose == 1) {
                                        controller.getchoose(2);
                                      } else {
                                        controller.getchoose(0);
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.import_export_rounded,
                                          color: controller.choose == 2
                                              ? Global.primary
                                              : Colors.black,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Sort",
                                          style: TextStyle(
                                            color: controller.choose == 2
                                                ? Global.primary
                                                : Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const InkWell(
                                child: Icon(
                                  Icons.dehaze_rounded,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
