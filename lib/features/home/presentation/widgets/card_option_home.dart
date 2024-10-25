import 'package:cripto_wallet/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardOptionHome extends StatelessWidget {
  const CardOptionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _OptionHome(
            icon: Icons.credit_card,
            text: "Deposit",
          ),
          _OptionHome(
            icon: Icons.monetization_on,
            text: "Withdraw",
          ),
          _OptionHome(
            icon: Icons.send_rounded,
            text: "Transfer",
          ),
          _OptionHome(
            icon: Icons.currency_exchange_rounded,
            text: "Exchange",
          )
        ],
      ),
    );
  }
}

class _OptionHome extends StatelessWidget {
  final String text;
  final IconData icon;
  const _OptionHome({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 85,
          color: cardOptionAndCripto,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 18,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
