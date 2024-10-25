import 'package:cripto_wallet/features/home/domain/repositories/criptocurrency_repository.dart';
import 'package:cripto_wallet/features/home/infrastructure/repositories/criptocurrency_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final criptocurrencyRepositoryProvider =
    Provider<CriptocurrencyRepository>((ref) {
  final criptocurrencyRepository = CriptocurrencyRepositoryImpl();
  return criptocurrencyRepository;
});
