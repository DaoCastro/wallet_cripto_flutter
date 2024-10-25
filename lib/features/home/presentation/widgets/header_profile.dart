import 'package:cripto_wallet/config/constant/Enviroment.dart';
import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                Enviroment.apiAvatarUrl,
                width: 50,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Michael',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Welcome to CritoWallet',
                  style: TextStyle(color: Color(0xff838C9E)),
                )
              ],
            ),
          ],
        ),
        const Icon(
          Icons.notifications_on_rounded,
          color: Colors.white,
        )
      ],
    );
  }
}
