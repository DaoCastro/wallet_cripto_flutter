import 'package:cripto_wallet/features/home/domain/datasources/criptocurrency_datasource.dart';
import 'package:cripto_wallet/features/home/domain/entities/data_criptocurrency.dart';
import 'package:cripto_wallet/features/home/domain/repositories/criptocurrency_repository.dart';
import 'package:cripto_wallet/features/home/infrastructure/datasources/criptocurrency_datasource_impl.dart';

class CriptocurrencyRepositoryImpl extends CriptocurrencyRepository {
  final CriptocurrencyDatasource datasources;

  CriptocurrencyRepositoryImpl({CriptocurrencyDatasource? datasources})
      : datasources = datasources ?? CriptocurrencyDatasourceImpl();

  @override
  Future<DataCriptocurrency> getLastedCriptoCurrency() {
    return datasources.getLastedCriptoCurrency();
  }
}
