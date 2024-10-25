import 'package:cripto_wallet/features/home/domain/entities/data_criptocurrency.dart';
import 'package:cripto_wallet/features/home/domain/repositories/criptocurrency_repository.dart';
import 'package:cripto_wallet/features/home/presentation/provider/criptocurrency_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final criptocurrencyProvider =
    StateNotifierProvider<CriptocurrencyNotifire, CriptocurrencyState>((ref) {
  final criptocurrencyRepository = ref.watch(criptocurrencyRepositoryProvider);
  return CriptocurrencyNotifire(
      criptocurrencyRepository: criptocurrencyRepository);
});

class CriptocurrencyNotifire extends StateNotifier<CriptocurrencyState> {
  final CriptocurrencyRepository criptocurrencyRepository;
  CriptocurrencyNotifire({required this.criptocurrencyRepository})
      : super(CriptocurrencyState()) {
    getLastedCriptoCurrency();
  }

  Future getLastedCriptoCurrency() async {
    if (state.isLoading) return;

    state = state.copyWith(isLoading: true);

    final criptos = await criptocurrencyRepository.getLastedCriptoCurrency();

    state = state.copyWith(isLoading: false, dataCriptocurrency: criptos);
  }
}

class CriptocurrencyState {
  final bool isLoading;
  final DataCriptocurrency? dataCriptocurrency;

  CriptocurrencyState({this.isLoading = false, this.dataCriptocurrency});

  CriptocurrencyState copyWith(
          {DataCriptocurrency? dataCriptocurrency, bool? isLoading}) =>
      CriptocurrencyState(
          dataCriptocurrency: dataCriptocurrency ?? this.dataCriptocurrency,
          isLoading: isLoading ?? this.isLoading);
}
