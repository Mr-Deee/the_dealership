import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_dealership/Pages/details_page.dart';
import 'package:the_dealership/data/cars.dart';
import 'package:unicons/unicons.dart';

Padding buildCar(int i, Size size, bool isDarkMode) {
  return Padding(
    padding: EdgeInsets.only(
      right: size.width * 0.03,
    ),
    child: Center(
      child: SizedBox(
        height: size.width * 0.55,
        width: size.width * 0.5,
        child: Container(
          decoration: BoxDecoration(
            color: isDarkMode ? Colors.white.withOpacity(0.05) : Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.02,
            ),
            child: InkWell(
              onTap: () {
               DetailsPage(
                  carImage: cars[i]['carImage'],
                  carClass: cars[i]['carClass'],
                  carName: cars[i]['carName'],
                  carPower: cars[i]['carPower'],
                  people: cars[i]['people'],
                  bags: cars[i]['bags'],
                  carPrice: cars[i]['carPrice'],
                  carRating: cars[i]['carRating'],
                  isRotated: cars[i]['isRotated'],
                );
              },
              child: SingleChildScrollView(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.01,
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: cars[i]['isRotated']
                            ? Image.asset(
                                cars[i]['carImage'],
                                height: size.width * 0.25,
                                width: size.width * 0.5,
                                fit: BoxFit.contain,
                              )
                            : Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(pi),
                                child: Image.asset(
                                  cars[i]['carImage'],
                                  height: size.width * 0.25,
                                  width: size.width * 0.5,
                                  fit: BoxFit.contain,
                                ),
                              ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.01,
                      ),
                      child: Text(
                        cars[i]['carClass'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color:

                              isDarkMode ? Colors.white : Colors.black,
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      cars[i]['carName'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color:
                            isDarkMode ? Colors.white : Colors.black,
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Text(
                            '${cars[i]['carPrice']}\GHS',
                            style: GoogleFonts.poppins(
                              color: isDarkMode
                                  ? Colors.white
                                  : Colors.lightBlue,
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '/per day',
                            style: GoogleFonts.poppins(
                              color: isDarkMode
                                  ? Colors.white.withOpacity(0.8)
                                  : Colors.black.withOpacity(0.8),
                              fontSize: size.width * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              right: size.width * 0.025,
                            ),
                            child: SizedBox(
                              height: size.width * 0.1,
                              width: size.width * 0.1,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      10,
                                    ),
                                  ),
                                ),
                                child: const Icon(
                                  UniconsLine.credit_card,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
