import 'package:belajar_flutter1/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 240, 240),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Header(),
            const SizedBox(
              height: 24,
            ),

            //Categories
            categories(),

            //Staff Picks
            Padding(
              padding: const EdgeInsets.only(
                  top: 24, bottom: 24, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Staff Picks",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var i = 0; i < 5; i++)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 245, 244, 247),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/image_6.png",
                                      height: 80,
                                      width: 120,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 5, top: 10),
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: const Color(0xff322E4A),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "New",
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: const Color(0xFFF7AF4B),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    child: Text(
                                      "Lagon Sky",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    child: Text(
                                      "USD 920 ",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xffF7AF4B),
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(6),
                                child: Text(
                                  "800 sq ft.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
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

            //Best Agent
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Agents",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var i = 0; i <= 10; i++)
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/images/image_71.png",
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  child: Text("Fikri",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      )),
                                ),
                                Text("1945 Soldout",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        // Column(
                        //   children: [
                        //     ClipRRect(
                        //       borderRadius: BorderRadius.circular(50),
                        //       child: Image.asset(
                        //         "assets/images/image_73.png",
                        //         height: 40,
                        //         width: 40,
                        //         fit: BoxFit.cover,
                        //       ),
                        //     ),
                        //     Container(
                        //       padding: const EdgeInsets.all(6),
                        //       child: Text("Isy Mana",
                        //           style: GoogleFonts.poppins(
                        //             fontSize: 12,
                        //             fontWeight: FontWeight.normal,
                        //           )),
                        //     ),
                        //     Text("839 Sold",
                        //         style: GoogleFonts.poppins(
                        //           fontSize: 12,
                        //           fontWeight: FontWeight.normal,
                        //         )),
                        //   ],
                        // ),
                        // Column(
                        //   children: [
                        //     ClipRRect(
                        //       borderRadius: BorderRadius.circular(50),
                        //       child: Image.asset(
                        //         "assets/images/image_75.png",
                        //         height: 40,
                        //         width: 40,
                        //         fit: BoxFit.cover,
                        //       ),
                        //     ),
                        //     Container(
                        //       padding: const EdgeInsets.all(6),
                        //       child: Text("Luph",
                        //           style: GoogleFonts.poppins(
                        //             fontSize: 12,
                        //             fontWeight: FontWeight.normal,
                        //           )),
                        //     ),
                        //     Text("442 Sold",
                        //         style: GoogleFonts.poppins(
                        //           fontSize: 12,
                        //           fontWeight: FontWeight.normal,
                        //         )),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),

            //Cities
            Padding(
              padding: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cities",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),

                    //listTile
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //city 1
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 244, 247),
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            leading: Image.asset(
                              "assets/images/image_8.png",
                              fit: BoxFit.fill,
                            ),
                            title: Text("Jakarta Selatan",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                            subtitle: Text("194 Property"),
                          ),
                        ),
                        const SizedBox(height: 10),

                        //city 2
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 244, 247),
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            leading: Image.asset(
                              "assets/images/image_9.png",
                              fit: BoxFit.fill,
                            ),
                            title: Text("Bandung",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                            subtitle: Text("89,400 Property"),
                          ),
                        ),
                        const SizedBox(height: 10),

                        //city 3
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 244, 247),
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            leading: Image.asset(
                              "assets/images/image_10.png",
                              fit: BoxFit.fill,
                            ),
                            title: Text("Denpasar",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )),
                            subtitle: Text("184,000 Property"),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ]),
            )
          ]),
        ));
  }

  Widget categories() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Categories",
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 244, 247),
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      "assets/images/fi_wind.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    child: Text("Hutan",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 244, 247),
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      "assets/images/fi_shopping-bag.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    child: Text("Toko",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 244, 247),
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      "assets/images/fi_truck.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    child: Text("Gudang",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 244, 247),
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      "assets/images/fi_cloud-drizzle.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    child: Text("Hujan",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 244, 247),
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      "assets/images/fi_briefcase.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    child: Text("Office",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
