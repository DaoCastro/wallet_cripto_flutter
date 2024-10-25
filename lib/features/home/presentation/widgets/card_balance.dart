import 'package:cripto_wallet/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardBalance extends StatelessWidget {
  const CardBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: cardBalanceColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My Balance',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '\$ 4,562.52',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Monthly profit',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '+ \$ 1,262.5',
                            style: TextStyle(
                                fontSize: 15,
                                color: profitCardBalanceColor,
                                fontWeight: FontWeight.bold),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: profitBackgroundCardBalence,
                              child: const Padding(
                                padding: EdgeInsets.all(4),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: profitCardBalanceColor,
                                    ),
                                    Text('+28%',
                                        style: TextStyle(
                                            color: profitCardBalanceColor,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 5,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
        )
      ],
    );
  }
}
