import 'package:cripto_wallet/features/home/presentation/provider/criptocurrency_provider.dart';
import 'package:cripto_wallet/features/home/presentation/widgets/card_balance.dart';
import 'package:cripto_wallet/features/home/presentation/widgets/card_option_home.dart';
import 'package:cripto_wallet/features/home/presentation/widgets/criptocurrency_card.dart';
import 'package:cripto_wallet/features/home/presentation/widgets/header_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final criptoState = ref.watch(criptocurrencyProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              const HeaderProfile(),
              const SizedBox(
                height: 25,
              ),
              const CardBalance(),
              const SizedBox(
                height: 25,
              ),
              const CardOptionHome(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'My Portofolio',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              CriptocurrencyCard(
                  criptos: criptoState.dataCriptocurrency?.data ?? [])
            ],
          ),
        ),
      ),
    );
  }
}
