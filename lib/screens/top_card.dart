// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:cashmap/utils/color_utils.dart';

class TopNeuCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expense;

  TopNeuCard({
    required this.balance,
    required this.expense,
    required this.income,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 180,
        width: 325,
        // ignore: sort_child_properties_last
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Current month spends',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 16)),
              Text(
                'Rs ' + balance,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 32),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Income',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255))),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Rs '  + income,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600)),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Expense',
                                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w100)),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Rs ' + expense,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              hexStringToColor("50D0FF"),
              hexStringToColor("572984")
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      ),
    );
  }
}
