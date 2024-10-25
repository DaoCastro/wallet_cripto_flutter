import 'package:cripto_wallet/config/constant/enviroment.dart';
import 'package:cripto_wallet/features/home/domain/datasources/criptocurrency_datasource.dart';
import 'package:cripto_wallet/features/home/domain/entities/data_criptocurrency.dart';
import 'package:dio/dio.dart';

class CriptocurrencyDatasourceImpl extends CriptocurrencyDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: Enviroment.apiCoinmarketcap,
      headers: {'X-CMC_PRO_API_KEY': Enviroment.apiKeyCoinmarketcap}));

  @override
  Future<DataCriptocurrency> getLastedCriptoCurrency() async {
    try {
      final response =
          await dio.get('/v1/cryptocurrency/listings/latest?limit=20');
      final dataCriptocurency = DataCriptocurrency.fromJson(response.data);
      return dataCriptocurency;
    } catch (e) {
      throw Exception();
    }
  }
}
