import 'package:cripto_wallet/features/home/domain/entities/data_criptocurrency.dart';

abstract class CriptocurrencyDatasource {
  Future<DataCriptocurrency> getLastedCriptoCurrency();
}
