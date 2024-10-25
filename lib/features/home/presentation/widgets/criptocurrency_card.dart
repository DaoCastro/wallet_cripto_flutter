import 'package:cripto_wallet/config/constant/enviroment.dart';
import 'package:cripto_wallet/config/theme/app_theme.dart';
import 'package:cripto_wallet/features/home/domain/entities/data.dart';
import 'package:flutter/material.dart';

class CriptocurrencyCard extends StatelessWidget {
  final List<Data> criptos;
  const CriptocurrencyCard({super.key, required this.criptos});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: criptos.length,
        itemBuilder: (context, index) {
          final cripto = criptos[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: cardOptionAndCripto,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "${Enviroment.urlLogoCripto}${cripto.id ?? "0"}.png",
                            width: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                cripto.name ?? "",
                                style: const TextStyle(
                                    color: Color(0xff838C9E), fontSize: 10),
                              ),
                              Text(
                                "${cripto.symbol}/USD",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
