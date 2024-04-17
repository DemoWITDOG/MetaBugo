import 'package:dio/dio.dart';
import 'package:metabugo/data/models/funeral_api_model.dart';
import 'package:xml/xml.dart';

class FuneralApiClient {
  final Dio _dio = Dio();

  // TODO : 나중에 다른 type으로 변환 시켜줘야 함
  Future<List<FuneralApiModel>> fetchData(String apiUrl, String apiKey, String keyword) async {
    try {
      final response = await _dio.get(apiUrl, queryParameters: {
        'serviceKey': apiKey,
        'pageNo': '1',
        'numOfRows': '150',
        'apiType': 'XML',
        'ctpv': keyword,
      });

      print('fetch data : ${response}');

      if (response.statusCode == 200) {
        final xmlString = response.data.toString();
        final document = XmlDocument.parse(xmlString);
        final items = document.findAllElements('item');

        List<FuneralApiModel> funeralList = items.map((item) => FuneralApiModel.fromXml(item)).toList();

        return funeralList;
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to load data: $error');
    }
  }
}
