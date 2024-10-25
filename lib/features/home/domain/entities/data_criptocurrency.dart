import 'package:cripto_wallet/features/home/domain/entities/data.dart';
import 'package:cripto_wallet/features/home/domain/entities/status.dart';

class DataCriptocurrency {
  List<Data>? data;
  Status? status;

  DataCriptocurrency({this.data, this.status});

  DataCriptocurrency.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }
}
