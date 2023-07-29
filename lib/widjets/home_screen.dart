import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui/widjets/colors.dart';

class HomeScreen extends StatelessWidget {
  List catNames = [
    "Calculator",
    "Monitor",
    "Eye",
    "Brain",
    "Medal",
    "Translation",
    "Add"
  ];
  List<Icon> catIcons = [
    const Icon(
      MdiIcons.calculator,
      color: pColor,
      size: 30,
    ),
    const Icon(
      MdiIcons.monitor,
      color: pColor,
      size: 30,
    ),
    const Icon(
      MdiIcons.eye,
      color: pColor,
      size: 30,
    ),
    const Icon(
      MdiIcons.brain,
      color: pColor,
      size: 30,
    ),
    const Icon(
      MdiIcons.medal,
      color: pColor,
      size: 30,
    ),
    const Icon(
      MdiIcons.translate,
      color: pColor,
      size: 30,
    ),
    const Icon(
      MdiIcons.plusCircle,
      color: pColor,
      size: 60,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xFFD9E4EE),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: 600,
                height: 240,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/account.png"),
                                backgroundColor: Colors.white,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: wColor,
                                size: 30,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "HI Student !",
                            style: TextStyle(
                                color: wColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Here you can gte the \nknowledge you need",
                            style: TextStyle(
                                color: wColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 55,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: wColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: sdColor,
                                    blurRadius: 6,
                                    spreadRadius: 3,
                                  )
                                ]),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search here...",
                                  hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.5)),
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    size: 25,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: bColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 100,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: catNames.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 15),
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: sdColor,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: catIcons[index],
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  catNames[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: bColor.withOpacity(0.7)),
                                )
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Recommended teachers",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: bColor.withOpacity(0.7)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
